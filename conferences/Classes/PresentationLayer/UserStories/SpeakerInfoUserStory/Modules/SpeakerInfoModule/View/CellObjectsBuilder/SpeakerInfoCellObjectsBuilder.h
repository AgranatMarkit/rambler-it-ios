//
//  SpeakerInfoCellObjectsBuilder.h
//  Conferences
//
//  Created by Vasyura Anastasiya on 02/08/16.
//  Copyright © 2016 Rambler. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SpeakerPlainObject;
@class SocialContactsConfigurator;

@interface SpeakerInfoCellObjectsBuilder : NSObject

@property (nonatomic, strong) SocialContactsConfigurator *configurator;

- (NSArray *)buildObjectsWithSpeaker:(SpeakerPlainObject *)speaker;

@end
