//
//  RequestSignersAssembly.h
//  Conferences
//
//  Created by Egor Tolstoy on 05/10/15.
//  Copyright © 2015 Rambler. All rights reserved.
//

#import <Typhoon/Typhoon.h>

#import "RequestSignersFactory.h"

/**
 @author Egor Tolstoy
 
 The implementation of the RequestSignersFactory protocol, based on TyphoonAssembly
 */
@interface RequestSignersAssembly : TyphoonAssembly <RequestSignersFactory>

@end
