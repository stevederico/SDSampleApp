//
//  SDPatternViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDPatternViewController.h"
#import "SDPatternCell.h"
@interface SDPatternViewController ()

@end

@implementation SDPatternViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    SDPatternCell *cell = (SDPatternCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDPatternCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    [[cell textLabel] setText:[self.examples objectAtIndex:indexPath.row]];

    return cell;
}

@end
