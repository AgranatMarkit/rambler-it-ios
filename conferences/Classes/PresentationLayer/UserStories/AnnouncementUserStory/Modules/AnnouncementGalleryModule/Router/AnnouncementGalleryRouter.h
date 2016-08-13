//
//  AnnouncementGalleryAnnouncementGalleryRouter.h
//  RamblerConferences
//
//  Created by Egor Tolstoy on 13/08/2016.
//  Copyright © 2016 Rambler&Co. All rights reserved.
//

#import "AnnouncementGalleryRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface AnnouncementGalleryRouter : NSObject <AnnouncementGalleryRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
