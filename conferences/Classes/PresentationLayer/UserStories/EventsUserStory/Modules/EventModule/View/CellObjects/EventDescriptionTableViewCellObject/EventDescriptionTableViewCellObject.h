//
//  EventDescriptionTableViewCellObject.h
//  Conferences
//
//  Created by Karpushin Artem on 14/11/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import <Nimbus/NimbusModels.h>

@class PlainEvent;

@interface EventDescriptionTableViewCellObject : NSObject <NICellObject>

@property (strong, nonatomic) NSString *eventDescription;

+ (instancetype)objectWithEvent:(PlainEvent *)event;

@end
