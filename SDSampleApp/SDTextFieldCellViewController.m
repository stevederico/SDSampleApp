//
//  SDTextFieldCellViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDTextFieldCellViewController.h"
#import "SDTextFieldCell.h"
@interface SDTextFieldCellViewController ()

@end

@implementation SDTextFieldCellViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    SDTextFieldCell *cell = (SDTextFieldCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDTextFieldCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    [[cell textLabel] setText:[self.examples objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
