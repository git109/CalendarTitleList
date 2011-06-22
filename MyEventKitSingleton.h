//
//  MyEventKitSingleton.h
//  CalendarTitleList

#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>

@interface MyEventKitSingleton : NSObject {
    EKEventStore		*sharedEventKitStore;
}

@property (nonatomic, retain) EKEventStore *sharedEventKitStore;

+ (MyEventKitSingleton *) sharedInstance;

-(NSMutableArray *)getCalendarArray;

@end
