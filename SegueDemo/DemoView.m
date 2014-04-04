//
//  DemoView.m
//  SegueDemo
//
//  Created by Rene Alejandro Basurto Quijada on 03/04/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.alpha = 0.5;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.alpha = 1.0;
    
    if ([self.delegate respondsToSelector:@selector(touchOnDemoView:)]) {
        [self.delegate touchOnDemoView:self];
    }
}

@end
