//
//  DestinationViewController.m
//  SegueDemo
//
//  Created by Rene Alejandro Basurto Quijada on 03/04/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "DestinationViewController.h"
#import "DemoProtocol.h"
#import "DemoView.h"

@interface DestinationViewController () <DemoProtocol>

@end

@implementation DestinationViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.theLabel.text = _stringToReceive;
    [self prepareDelegates];
}


- (void)prepareDelegates
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[DemoView class]])
        {
            ((DemoView *)view).delegate = self;
        }
    }
}


- (IBAction)okButton:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:NULL];
}

- (void)touchOnDemoView:(UIView *)view
{
    self.stringToReturn = @"Unwinded...";
    [self performSegueWithIdentifier:@"DoUnwind" sender:self];
}

@end
