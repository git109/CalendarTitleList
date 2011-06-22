//
//  CalendarTitleListAppDelegate.h
//  CalendarTitleList
//
//  Created by Jerel Rocktaschel on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewController;

@interface CalendarTitleListAppDelegate : NSObject <UIApplicationDelegate> {
    
    MyViewController *myViewController;

}

@property (nonatomic, retain) IBOutlet MyViewController *myViewController;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
