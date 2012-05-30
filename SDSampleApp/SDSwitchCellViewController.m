//
//  SDSwitchCellViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDSwitchCellViewController.h"
#import "SDSwitchCell.h"
@interface SDSwitchCellViewController ()

@end

@implementation SDSwitchCellViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    SDSwitchCell *cell = (SDSwitchCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDSwitchCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    cell.switchItem.tag = indexPath.row;
    [[cell textLabel] setText:[self.examples objectAtIndex:indexPath.row]];
    [cell.switchItem addTarget:self action:@selector(switchFlipped:) forControlEvents:UIControlEventValueChanged];
    
    return cell;
}

- (void)switchFlipped:(id)sender{
    UISwitch *switchItem = sender;

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Switch Flipped" message:[NSString stringWithFormat:@"Row %d",switchItem.tag] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];

}

@end
