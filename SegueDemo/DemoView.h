//
//  DemoView.h
//  SegueDemo
//
//  Created by Rene Alejandro Basurto Quijada on 03/04/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoProtocol.h"

@interface DemoView : UIView

@property (nonatomic, weak) id <DemoProtocol> delegate;

@end
