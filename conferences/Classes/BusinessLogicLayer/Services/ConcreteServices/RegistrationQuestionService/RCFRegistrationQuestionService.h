//
//  RCFRegistrationQuestionService.h
//  Conferences
//
//  Created by Karpushin Artem on 01/10/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSPredicate;
@class RegistrationQuestion;

typedef void (^RCFRegistrationQuestionCompletionBlock)(RegistrationQuestion *registrationQuestion, NSError *error);

@protocol RCFRegistrationQuestionService <NSObject>

- (RegistrationQuestion *)obtainRegistrationQuestionWithPredicate:(NSPredicate *)predicate;

- (void)updateRegistrationQuestionWithPredicate:(NSPredicate *)predicate completionBlock:(RCFRegistrationQuestionCompletionBlock)completionBlock;

@end
