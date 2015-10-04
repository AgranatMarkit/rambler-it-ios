//
//  RCFResultsResponseObjectFormatter.h
//  Conferences
//
//  Created by Egor Tolstoy on 04/10/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RCFResponseObjectFormatter.h"

/**
 @author Egor Tolstoy
 
 The formatter takes an NSDictionary as an input and produces NSArray as an output.
 The input structure:
   {
     "results" : {
                 ...
                 }
   }
 */
@interface RCFResultsResponseObjectFormatter : NSObject <RCFResponseObjectFormatter>

@end
