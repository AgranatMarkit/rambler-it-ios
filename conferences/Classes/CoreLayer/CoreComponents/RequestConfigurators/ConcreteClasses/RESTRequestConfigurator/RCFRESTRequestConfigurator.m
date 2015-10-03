//
//  RCFRESTRequestConfigurator.m
//  Conferences
//
//  Created by Egor Tolstoy on 03/10/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import "RCFRESTRequestConfigurator.h"

#import "RCFRequestDataModel.h"

@interface RCFRESTRequestConfigurator ()

@property (strong, nonatomic) NSURL *baseURL;
@property (strong, nonatomic) NSString *apiPath;

@end

@implementation RCFRESTRequestConfigurator

#pragma mark - Initialization

- (instancetype)initWithBaseURL:(NSURL *)baseURL
                        apiPath:(NSString *)apiPath {
    self = [super init];
    if (self) {
        _baseURL = baseURL;
        _apiPath = apiPath;
    }
    return self;
}

#pragma mark - RCFRequestConfigurator

- (NSURLRequest *)requestWithMethod:(NSString *)method
                        serviceName:(NSString *)serviceName
                      urlParameters:(NSArray *)urlParameters
                   requestDataModel:(RCFRequestDataModel *)requestDataModel {
    NSURL *finalURL = [self generateURLWithServiceName:serviceName
                                         urlParameters:urlParameters];
    NSMutableURLRequest *mutableRequest = [NSMutableURLRequest requestWithURL:finalURL];
    [mutableRequest setHTTPMethod:method];
    
    if (requestDataModel.bodyData) {
        [mutableRequest setHTTPBody:requestDataModel.bodyData];
    }
    
    NSURLRequest *request = [self requestBySerializingRequest:[mutableRequest copy]
                                               withParameters:requestDataModel.queryParameters
                                                        error:nil];
    
    return request;
}

#pragma mark - Helper Methods

- (NSURL *)generateURLWithServiceName:(NSString *)serviceName
                        urlParameters:(NSArray *)urlParameters {
    NSMutableArray *urlParts = [NSMutableArray new];

    [urlParts addObject:self.apiPath];
    if (serviceName) {
        [urlParts addObject:serviceName];
    }

    [urlParts addObjectsFromArray:urlParameters];
    
    NSString *urlPath = [urlParts componentsJoinedByString:@"/"];
    urlPath = [self filterSlachesInURLPath:urlPath];
    
    NSURL *finalURL = [self.baseURL URLByAppendingPathComponent:urlPath];
    return finalURL;
}

- (NSString *)filterSlachesInURLPath:(NSString *)urlPath {
    NSString *filteredPath = [urlPath stringByReplacingOccurrencesOfString:@"?" withString:@""];
    filteredPath = [urlPath stringByReplacingOccurrencesOfString:@"//" withString:@"/"];
    
    return filteredPath;
}

#pragma mark - Debug

- (NSString *)debugDescription {
    return [NSString stringWithFormat:@"BaseURL: %@;\napiPath: %@", self.baseURL, self.apiPath];
}

@end
