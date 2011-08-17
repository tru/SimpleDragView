//
//  SimpleDragViewsAppDelegate.h
//  SimpleDragViews
//
//  Created by Tobias Hieta on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleDragViewsViewController;

@interface SimpleDragViewsAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleDragViewsViewController *viewController;

@end
