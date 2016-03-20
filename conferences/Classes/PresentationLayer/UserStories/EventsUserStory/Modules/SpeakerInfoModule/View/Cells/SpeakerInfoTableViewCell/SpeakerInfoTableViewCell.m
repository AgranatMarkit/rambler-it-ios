//
//  SpeakerInfoTableViewCell.m
//  Conferences
//
//  Created by Karpushin Artem on 20/03/16.
//  Copyright © 2016 Rambler. All rights reserved.
//

#import "SpeakerInfoTableViewCell.h"
#import "SpeakerInfoTableViewCellObject.h"

@interface SpeakerInfoTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SpeakerInfoTableViewCell

#pragma mark NICell methods

- (BOOL)shouldUpdateCellWithObject:(SpeakerInfoTableViewCellObject *)object {
    self.label.text = object.text;
    
    return  true;
}

@end
