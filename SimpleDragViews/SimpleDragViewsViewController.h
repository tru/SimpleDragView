//
//  SimpleDragViewsViewController.h
//  SimpleDragViews
//
//  Created by Tobias Hieta on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleDragViewsViewController : UIViewController {
    NSArray *dragViews;
}


@property (nonatomic, retain) IBOutletCollection(UIView) NSArray *dragViews;
@end
