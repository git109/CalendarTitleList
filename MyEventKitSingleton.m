//
//  MyEventKitSingleton.m
//  CalendarTitleList

#import "MyEventKitSingleton.h"

@implementation MyEventKitSingleton

static MyEventKitSingleton *_sharedInstance;

@synthesize sharedEventKitStore;

+ (MyEventKitSingleton *) sharedInstance
{
    if (!_sharedInstance)
    {
        _sharedInstance = [[MyEventKitSingleton alloc] init];
    }
	
    return _sharedInstance;
}

-(id)init{
    self = [super init];
    if (self) {
        self.sharedEventKitStore = [[EKEventStore alloc] init];
    }
	
    return self;
}

-(NSMutableArray *)getCalendarArray {
	
	MyEventKitSingleton *myEventKitSingleton = [MyEventKitSingleton sharedInstance];
	NSArray *aryTemp = myEventKitSingleton.sharedEventKitStore.calendars;
    
	NSMutableArray *tempArray = [[[NSMutableArray alloc] initWithCapacity:30] autorelease];
	
	int x;
	int i = 0;
	
	for (x = 0; x < aryTemp.count; x++) {
		
		EKCalendar *ekCal = [aryTemp objectAtIndex:x];
		
		if (ekCal.allowsContentModifications) {
			[tempArray insertObject:ekCal.title atIndex:i];
			i++;
		}
	}
	
	return tempArray;
	
}

-(void)dealloc {
	[sharedEventKitStore release];	
	[super dealloc];
}

@end

