//
//  SDPlaceholderCellViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDPlaceholderCellViewController.h"
#import "SDPlaceholderCell.h"
@interface SDPlaceholderCellViewController ()

@end

@implementation SDPlaceholderCellViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    SDPlaceholderCell *cell = (SDPlaceholderCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDPlaceholderCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    [[cell textField] setPlaceholder:[self.examples objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
