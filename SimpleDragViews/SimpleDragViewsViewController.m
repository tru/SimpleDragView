//
//  SimpleDragViewsViewController.m
//  SimpleDragViews
//
//  Created by Tobias Hieta on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleDragViewsViewController.h"

@implementation SimpleDragViewsViewController
@synthesize dragViews;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (UIView *view in self.dragViews) {
        UIPanGestureRecognizer *pgr = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewDidMove:)];
        [view addGestureRecognizer:pgr];
        [pgr release];
    }
}

- (void)viewDidMove:(UIPanGestureRecognizer*)pgr
{
    if (pgr.state == UIGestureRecognizerStateChanged) {
        CGPoint center = pgr.view.center;
        CGPoint translation = [pgr translationInView:pgr.view];
        center = CGPointMake(center.x + translation.x, 
                             center.y + translation.y);
        pgr.view.center = center;
        [pgr setTranslation:CGPointZero inView:pgr.view];
    }
}

- (void)viewDidUnload
{
    [self setDragViews:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (void)dealloc {
    [dragViews release];
    [super dealloc];
}
@end
