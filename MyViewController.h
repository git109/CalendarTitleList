//
//  MyViewController.h
//  CalendarTitleList

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView	*myTable;
	NSArray		*myArray;
}

@property (nonatomic, retain) UITableView *myTable;
@property (nonatomic, retain) NSArray *myArray;

@end
