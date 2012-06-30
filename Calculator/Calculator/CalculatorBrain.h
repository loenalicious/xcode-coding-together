//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Tamara Houtveen on 29-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    
}
-(void)pushOperand:(double)operand;
-(double)performOperation:(NSString*)operation;
@end
