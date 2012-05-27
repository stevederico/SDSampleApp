//
//  SDFooterButtonViewController.m
//  SDSampleApp
//
//  Created by Stephen Derico on 5/27/12.
//  Copyright (c) 2012 Bixby Apps. All rights reserved.
//
#import "SDFooterButton.h"
#import "SDFooterButtonViewController.h"

@interface SDFooterButtonViewController ()

@end

@implementation SDFooterButtonViewController


- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{

    SDFooterButton *footer = [[SDFooterButton alloc] initWithStyle:SDFooterButtonStyleGreen];
    [footer.button setTitle:@"Tap Me" forState:UIControlStateNormal];
    [footer.button addTarget:self action:@selector(tapped) forControlEvents:UIControlEventTouchUpInside];
    
    return footer;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{


    return 75.0f;
}

- (void)tapped{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Tapped" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];

}

@end
