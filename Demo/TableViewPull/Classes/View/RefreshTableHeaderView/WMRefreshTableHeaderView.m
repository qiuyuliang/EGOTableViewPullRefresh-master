//
//  WMRefreshTableHeaderView.m
//  WMRefreshTableHeaderView
//
//  Created by QiuYuliang on 15-3-19.
//  Copyright (c) 2015年 邱育良. All rights reserved.
//

#import "WMRefreshTableHeaderView.h"

@implementation WMRefreshTableHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _progress = 0;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
//    CGContextRef context = UIGraphicsGetCurrentContext();
    NSLog(@"draw:%f",self.progress);
//    _progress *= 2;
    UIColor *red = [UIColor whiteColor];
    [red set];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, CGRectGetHeight(rect) - _progress)];
    [path addQuadCurveToPoint:CGPointMake(CGRectGetWidth(rect), CGRectGetHeight(rect) - _progress) controlPoint:CGPointMake(CGRectGetMidX(rect), CGRectGetHeight(rect) + _progress)];
    [path addLineToPoint:CGPointMake(CGRectGetWidth(rect), CGRectGetHeight(rect))];
    [path addLineToPoint:CGPointMake(0, CGRectGetHeight(rect))];
    [path fill];
}


@end
