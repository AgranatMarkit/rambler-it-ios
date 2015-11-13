//
//  UIColor+Hex.h
//  Conferences
//
//  Created by Karpushin Artem on 31/10/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

// takes @"#123456"
+ (UIColor *)colorFromHexString:(NSString *)hexString;

@end
