//
//  CalendarTitleListAppDelegate.m
//  CalendarTitleList
//
//  Created by Jerel Rocktaschel on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalendarTitleListAppDelegate.h"
#import "MyViewController.h"

@implementation CalendarTitleListAppDelegate

@synthesize window=_window, myViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.myViewController = [[MyViewController alloc] init];
	[self.window addSubview:myViewController.view];
    self.window.backgroundColor = [UIColor blackColor]; 
	[self.window makeKeyAndVisible];
    
    return YES;
}

- (void)dealloc
{
    [_window release];
    [myViewController release];
    [super dealloc];
}

@end
