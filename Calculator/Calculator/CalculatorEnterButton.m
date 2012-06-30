//
//  CalculatorEnterButton.m
//  Calculator
//
//  Created by Tamara Houtveen on 30-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorEnterButton.h"

@implementation CalculatorEnterButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//Update View on Rotation - Forced Redraw
- (void) awakeFromNib
{
    self.contentMode = UIViewContentModeRedraw;
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGGradientRef myGradient_0;
    CGColorSpaceRef myColorSpace_0;
    size_t locationCount_0 = 3;
    CGFloat locationList_0[] = {  0, 0.073600, 1 };
    CGFloat colorList_0[] = 
    {
        0.0000, 0.4844, 0.6562 ,1.0,
        0.0000, 0.4062, 0.5547 ,1.0,
        0.0000, 0.1953, 0.2695 ,1.0
    };
    myColorSpace_0 = CGColorSpaceCreateDeviceRGB();
    myGradient_0 = CGGradientCreateWithColorComponents(myColorSpace_0, colorList_0, locationList_0, locationCount_0);
    
    CGPoint startPoint_0, endPoint_0;
    
    startPoint_0 = CGPointMake(306,-270.6484);
    endPoint_0 = CGPointMake(306,-354.3567);
    
    
    
    CGContextSaveGState(context);
    CGContextMoveToPoint(context, 5,86.5000);
    CGContextAddCurveToPoint(context,2.5190,86.5000,0.5000,84.4800,0.5000,82.0000);
    CGContextAddLineToPoint(context, 0.5000,5);
    CGContextAddCurveToPoint(context,0.5000,2.5190,2.5190,0.5000,5.0000,0.5000);
    CGContextAddLineToPoint(context,67.0000,0.5000);
    CGContextAddCurveToPoint(context,69.4800,0.5000,71.5000,2.5190,71.5000,5.0000);
    CGContextAddLineToPoint(context,71.5000,82.0000);
    CGContextAddCurveToPoint(context,71.5000,84.4800,69.4800,86.5000,67.0000,86.5000);
    CGContextAddLineToPoint(context, 5,86.5000);
    CGContextClosePath(context);
    
    CGContextClip(context);
    CGAffineTransform t_0 = CGAffineTransformMake(1, 0, 0, -1, -270, -265.5000);
    CGContextConcatCTM(context, t_0);
    CGContextDrawLinearGradient(context, myGradient_0, startPoint_0, endPoint_0, kCGGradientDrawsBeforeStartLocation);
    CGContextDrawLinearGradient(context, myGradient_0, startPoint_0, endPoint_0, kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    
    CGContextMoveToPoint(context, 67,1);
    CGContextAddCurveToPoint(context,69.2060,1,71,2.7940,71,5);
    CGContextAddLineToPoint(context,71,82);
    CGContextAddCurveToPoint(context,71,84.2060,69.2060,86,67,86);
    CGContextAddLineToPoint(context, 5,86);
    CGContextAddCurveToPoint(context,2.7940,86,1,84.2060,1,82);
    CGContextAddLineToPoint(context, 1,5);
    CGContextAddCurveToPoint(context,1,2.7940,2.7940,1,5,1);
    CGContextAddLineToPoint(context, 67,1);
    CGContextMoveToPoint(context, 67,0);
    CGContextAddLineToPoint(context, 5,0);
    CGContextAddCurveToPoint(context,2.2380,0,0,2.2390,0,5);
    CGContextAddLineToPoint(context,0,82);
    CGContextAddCurveToPoint(context,0,84.7620,2.2380,87,5,87);
    CGContextAddLineToPoint(context,67,87);
    CGContextAddCurveToPoint(context,69.7620,87,72,84.7620,72,82);
    CGContextAddLineToPoint(context, 72,5);
    CGContextAddCurveToPoint(context,72,2.2390,69.7620,0,67,0);
    CGContextAddLineToPoint(context,67,0);
    CGContextClosePath(context);
    
    
    CGColorSpaceRelease(myColorSpace_0);
    CGGradientRelease(myGradient_0);
    
}


@end
