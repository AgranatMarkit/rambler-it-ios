//
//  CoreAssembly.h
//  Conferences
//
//  Created by Vasyura Anastasiya on 20/07/16.
//  Copyright © 2016 Rambler. All rights reserved.
//

#import "ModuleAssemblyBase.h"
#import "AssemblyCollector/RamblerInitialAssembly.h"

@protocol ROSPonsomizer;

/**
 @author Vasyura Anastasiya
 
 Assembly with core components
 */
@interface PonsomizerAssembly : TyphoonAssembly <RamblerInitialAssembly>

- (id <ROSPonsomizer>)ponsomizer;

@end
