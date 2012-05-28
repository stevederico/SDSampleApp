//
//  RootViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/26/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController{

    NSArray *viewControllers;

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"SDSampleApp";
       
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    self.navigationItem.backBarButtonItem = back;
    
    viewControllers = [[NSArray alloc] initWithObjects:
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDFooterButtonViewController",@"Class",@"SDFooterButtonView",@"Title", nil],
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDLabelCellViewController",@"Class",@"SDLabelCell",@"Title", nil]
                       ,[NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDPatternViewController",@"Class",@"SDPatternCell",@"Title", nil],
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDPlaceholderCellViewController",@"Class",@"SDPlaceholderCell",@"Title", nil],
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDSmoothViewController",@"Class",@"SDSmoothCell",@"Title", nil],
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDSwitchCellViewController",@"Class",@"SDSwitchCell",@"Title", nil],
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"SDTextFieldCellViewController",@"Class",@"SDTextFieldCell",@"Title", nil],
                       nil];
    
    

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [viewControllers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    
    // Configure the cell...
    NSDictionary *item = [viewControllers objectAtIndex:indexPath.row];
    [cell.textLabel setText:[item valueForKey:@"Title"]];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    Class klass = [[NSBundle mainBundle] classNamed: [[viewControllers objectAtIndex:indexPath.row] valueForKey:@"Class"]];
    NSLog(@"Klass %@",[klass description]);
	UIViewController *viewController = [[klass alloc] init];
    viewController.title = [[viewControllers objectAtIndex:indexPath.row] valueForKey:@"Title"];
	[self.navigationController pushViewController:viewController animated:YES];

}

@end
