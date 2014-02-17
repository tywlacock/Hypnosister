//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Lacock, Ty on 2/17/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The circle will be the largest that will fit in the view
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    // Draw the circle
    UIBezierPath *path = [[UIBezierPath alloc] init];
    // Add arc to path at center with radius, from 0 to 2*PI radians
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    // Configure shape
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    
    [path stroke];
}

@end
