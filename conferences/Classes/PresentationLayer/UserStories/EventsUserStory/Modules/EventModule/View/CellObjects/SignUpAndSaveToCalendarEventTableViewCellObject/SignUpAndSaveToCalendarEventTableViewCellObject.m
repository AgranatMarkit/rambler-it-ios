//
//  EventInteractionTableViewCellObject.m
//  Conferences
//
//  Created by Karpushin Artem on 14/11/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import "SignUpAndSaveToCalendarEventTableViewCellObject.h"
#import "SignUpAndSaveToCalendarEventTableViewCell.h"

@interface SignUpAndSaveToCalendarEventTableViewCellObject ()

@property (strong, nonatomic, readwrite) UIColor *buttonColol;

@end

@implementation SignUpAndSaveToCalendarEventTableViewCellObject

#pragma mark - Initialization

- (instancetype)initWithEvent:(PlainEvent *)event {
    self = [super init];
    if (self) {
        // set button color
    }
    return self;
}

+ (instancetype)objectWithEvent:(PlainEvent *)event {
    return [[self alloc] initWithEvent:event];
}

#pragma mark - NICellObject methods

- (Class)cellClass {
    return [SignUpAndSaveToCalendarEventTableViewCell class];
}

- (UINib *)cellNib {
    return [UINib nibWithNibName:NSStringFromClass([SignUpAndSaveToCalendarEventTableViewCell class]) bundle:[NSBundle mainBundle]];
}

@end
