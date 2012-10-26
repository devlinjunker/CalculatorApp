//
//  ViewController.h
//  calculatorApp
//
//  Created by kuwaharg on 10/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController

// UI Properties
@property (nonatomic, strong) IBOutlet UIButton *addButton;
@property (nonatomic, strong) IBOutlet UIButton *subButton;
@property (nonatomic, strong) IBOutlet UILabel *display;

// Model Properties
@property (nonatomic, strong) CalculatorBrain *calc;

//Actions
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)equalPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;
-(IBAction)clearPressed:(UIButton *) sender;
-(IBAction)backspacePressed:(UIButton *)sender;

@end
