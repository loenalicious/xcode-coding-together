//
//  CalculatorBackground.m
//  Calculator
//
//  Created by Tamara Houtveen on 30-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBackground.h"

@implementation CalculatorBackground

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
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
    
    startPoint_0 = CGPointMake(0,0);
    endPoint_0 = CGPointMake(0,480);
    //
    CGContextSaveGState(context);
    
    CGMutablePathRef pRect_0 = CGPathCreateMutable();
    CGPathAddRect(pRect_0, NULL, CGRectMake(0, 0, 320.00, 480.00));
    CGContextSetRGBFillColor(context, 0.0000, 0.0000, 0.0000, 1.0000);
    
    
    
    CGContextAddPath(context, pRect_0);
    CGContextDrawPath(context, kCGPathFill);
    CGContextDrawLinearGradient(context, myGradient_0, startPoint_0, endPoint_0, kCGGradientDrawsBeforeStartLocation);
    CGPathRelease(pRect_0);
    CGContextRestoreGState(context);
    
    
    
    
}
@end
