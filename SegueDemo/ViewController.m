//
//  ViewController.m
//  SegueDemo
//
//  Created by Rene Alejandro Basurto Quijada on 03/04/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "ViewController.h"
#import "DestinationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)unwindDemo:(UIStoryboardSegue *)segue
{
    if ([segue.sourceViewController isKindOfClass:[DestinationViewController class]]) {
        DestinationViewController *dvc = (DestinationViewController *)segue.sourceViewController;
        self.oneLabel.text = dvc.stringToReturn;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[DestinationViewController class]]) {
        DestinationViewController *dvc = (DestinationViewController *)segue.destinationViewController;
        // do something on dvc
        dvc.stringToReceive = @"click view";
    }

}

@end
