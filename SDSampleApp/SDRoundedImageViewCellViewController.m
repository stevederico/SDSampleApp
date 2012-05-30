//
//  SDSmoothViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//

#import "SDRoundedImageViewCellViewController.h"
#import "SDRoundedImageViewCell.h"

@interface SDRoundedImageViewCellViewController ()

@end

@implementation SDRoundedImageViewCellViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    SDRoundedImageViewCell *cell = (SDRoundedImageViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDRoundedImageViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    [cell.imageView setImage:[UIImage imageNamed:@"gg.jpg"]];
    [[cell textLabel] setText:[self.examples objectAtIndex:indexPath.row]];
    
    return cell;
}


@end
