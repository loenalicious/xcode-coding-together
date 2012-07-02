//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Tamara Houtveen on 29-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"
@interface CalculatorViewController()
@property (nonatomic)BOOL userIsInTheMiddleOfEnteringANumber;
@property (strong,nonatomic) NSMutableArray *pointPressed;
@property (strong,nonatomic)CalculatorBrain*brain;
@end;

@implementation CalculatorViewController

@synthesize display=_display;
@synthesize passedDisplay = _passedDisplay;
@synthesize userIsInTheMiddleOfEnteringANumber=_userIsInTheMiddleOfEnteringANumber;
@synthesize brain=_brain;
@synthesize pointPressed=_pointPressed;

-(void)viewDidLoad{
    [self.display setFont:[UIFont fontWithName:@"NettoOT-Light" size:50]];
    [self.passedDisplay setFont:[UIFont fontWithName:@"NettoOT-Light" size:25]];
}


-(CalculatorBrain*)brain{
    if(!_brain){
        _brain = [[CalculatorBrain alloc]init];
    }
    return _brain;
}

- (NSMutableArray *) pointPressed
{
    if(_pointPressed == nil){
        _pointPressed = [[NSMutableArray alloc] init];  
    }
    return _pointPressed;
}


- (IBAction)digitPressed:(id)sender {
    NSString*digit = [sender currentTitle];
    self.passedDisplay.text=@"";
    
    if(self.userIsInTheMiddleOfEnteringANumber){
        
        if([digit isEqualToString:@"."]) {
            [self.pointPressed addObject:digit];
            if([self.pointPressed count] == 1) {
                self.display.text = [self.display.text stringByAppendingString:digit];
                self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:digit]; 
            }
        } else {
            self.display.text = [self.display.text stringByAppendingString:digit];
            self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:digit];
        }
    }
    else{
        if([digit isEqualToString:@"."]) {
            [self.pointPressed addObject:digit];
        }
        self.display.text = digit;
        if(self.passedDisplay.text == nil) {
            self.passedDisplay.text = digit;
        } else {
            self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:digit];
        }
        self.userIsInTheMiddleOfEnteringANumber = YES;
        
    }
}

- (IBAction)enterPressed {
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
    [self.pointPressed removeAllObjects];
    self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:@" "];
}

- (IBAction)clearPressed {
    self.userIsInTheMiddleOfEnteringANumber=NO;
    self.display.text=nil;
    self.passedDisplay.text=nil;
    [self.pointPressed removeAllObjects];
    self.brain=nil;
}

- (IBAction)operationPressed:(id)sender {
    
    if(self.userIsInTheMiddleOfEnteringANumber) [self enterPressed];  
    double result = [self.brain performOperation:[sender currentTitle]];
    
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
    
    self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:[sender currentTitle]];
    self.passedDisplay.text = [self.passedDisplay.text stringByAppendingString:@" "];
    
}
- (void)viewDidUnload {
    [self setPassedDisplay:nil];
    [super viewDidUnload];
}
@end
