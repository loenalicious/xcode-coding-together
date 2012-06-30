//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Tamara Houtveen on 29-06-12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *display;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *passedDisplay;

-(IBAction)operationPressed:(id)sender;

- (IBAction)digitPressed:(id)sender;
- (IBAction)enterPressed;
- (IBAction)clearPressed;

@end
