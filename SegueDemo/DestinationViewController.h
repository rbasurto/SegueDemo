//
//  DestinationViewController.h
//  SegueDemo
//
//  Created by Rene Alejandro Basurto Quijada on 03/04/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DestinationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *theLabel;

// in
@property (nonatomic, strong) NSString *stringToReceive;

// out
@property (nonatomic, strong) NSString *stringToReturn;

@end
