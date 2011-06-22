//
//  MyViewController.m
//  CalendarTitleList


#import "MyViewController.h"
#import "MyEventKitSingleton.h"

@implementation MyViewController

@synthesize myArray, myTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITableView *tempTable = [[UITableView alloc]initWithFrame:CGRectMake(10, 10, 290, 68)];
		self.myTable = tempTable;
        [self.view addSubview: self.myTable];
		[tempTable release];
		
		self.myTable.delegate = self;
		self.myTable.dataSource = self;
        
        MyEventKitSingleton *myEventKitSingleton = [MyEventKitSingleton sharedInstance];
        self.myArray = [[myEventKitSingleton getCalendarArray] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    }
    return self;
}

#pragma mark -  
#pragma mark UITableView Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    return 34;
}

- (NSInteger)numberOfkSectionsInTableView:(UITableView *)tableView 
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return myArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
	
	[cell.textLabel setFont:[UIFont fontWithName:@"Helvetica" size:17]];
    cell.textLabel.text = [myArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)dealloc
{
    [myTable release];
    [myArray release];
    [super dealloc];
}

@end
