//
//  CalculatorButton.m
//  Calculator
//
//  Created by Tamara Houtveen on 30-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorButton.h"

@implementation CalculatorButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        // Initialization code
    }
    return self;
}

- (void) awakeFromNib
{
    self.contentMode = UIViewContentModeRedraw;
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGColorRef blackColor = [UIColor colorWithRed:0.0 green:0.0 
                                           blue:0.0 alpha:1.0].CGColor;
    
    CGGradientRef myGradient_0;
    CGColorSpaceRef myColorSpace_0;
    size_t locationCount_0 = 3;
    CGFloat locationList_0[] = {  0, 0.773600, 1 };
    CGFloat colorList_0[] = 
    {
        0.0000, 0.1953, 0.2695 ,1.0,
        0.0000, 0.4062, 0.5547 ,1.0,
         0.0000, 0.4844, 0.6562 ,1.0
        
    };
    myColorSpace_0 = CGColorSpaceCreateDeviceRGB();
    myGradient_0 = CGGradientCreateWithColorComponents(myColorSpace_0, colorList_0, locationList_0, locationCount_0);
    
    CGPoint startPoint_0, endPoint_0;
    
    startPoint_0 = CGPointMake(36.0005,33.6631);
    endPoint_0 = CGPointMake(36.0005,0.5698);
    
    
    
    CGContextSaveGState(context);
    CGContextMoveToPoint(context, 5,35.5000);
    CGContextAddCurveToPoint(context,3.0700,35.5000,1.5000,33.9300,1.5000,32.0000);
    CGContextAddLineToPoint(context, 1.5000,5);
    CGContextAddCurveToPoint(context,1.5000,3.0700,3.0700,1.5000,5.0000,1.5000);
    CGContextAddLineToPoint(context,67.0000,1.5000);
    CGContextAddCurveToPoint(context,68.9300,1.5000,70.5000,3.0700,70.5000,5.0000);
    CGContextAddLineToPoint(context,70.5000,32.0000);
    CGContextAddCurveToPoint(context,70.5000,33.9300,68.9300,35.5000,67.0000,35.5000);
    CGContextAddLineToPoint(context, 5,35.5000);
    CGContextClosePath(context);
    
    CGContextClip(context);
    CGContextDrawLinearGradient(context, myGradient_0, startPoint_0, endPoint_0, kCGGradientDrawsBeforeStartLocation);
    CGContextDrawLinearGradient(context, myGradient_0, startPoint_0, endPoint_0, kCGGradientDrawsAfterEndLocation);
    
    CGContextRestoreGState(context);
    
    
    CGContextMoveToPoint(context, 67,2.5000);
    CGContextAddCurveToPoint(context,68.3790,2.5000,69.5000,3.6220,69.5000,5.0000);
    CGContextAddLineToPoint(context,69.5000,32.0000);
    CGContextAddCurveToPoint(context,69.5000,33.3790,68.3790,34.5000,67.0000,34.5000);
    CGContextAddLineToPoint(context, 5,34.5000);
    CGContextAddCurveToPoint(context,3.6220,34.5000,2.5000,33.3790,2.5000,32.0000);
    CGContextAddLineToPoint(context, 2.5000,5);
    CGContextAddCurveToPoint(context,2.5000,3.6220,3.6220,2.5000,5.0000,2.5000);
    CGContextAddLineToPoint(context, 67,2.5000);
    CGContextMoveToPoint(context, 67,0.5000);
    CGContextAddLineToPoint(context, 5,0.5000);
    CGContextAddCurveToPoint(context,2.5190,0.5000,0.5000,2.5190,0.5000,5);
    CGContextAddLineToPoint(context,0.5000,32);
    CGContextAddCurveToPoint(context,0.5000,34.4800,2.5190,36.5000,5.0000,36.5000);
    CGContextAddLineToPoint(context,67.0000,36.5000);
    CGContextAddCurveToPoint(context,69.4800,36.5000,71.5000,34.4800,71.5000,32.0000);
    CGContextAddLineToPoint(context, 71.5000,5);
    CGContextAddCurveToPoint(context,71.5000,2.5190,69.4800,0.5000,67,0.5000);
    CGContextAddLineToPoint(context,67,0.5000);
    CGContextSetLineWidth(context, 1.0);
    CGContextSetStrokeColorWithColor(context, blackColor);
    CGContextClosePath(context);
    
    
    
    CGColorSpaceRelease(myColorSpace_0);
    CGGradientRelease(myGradient_0);
    
}


@end
