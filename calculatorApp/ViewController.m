//
//  ViewController.m
//  calculatorApp
//
//  Created by kuwaharg on 10/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

//Synthesize Properties
@synthesize addButton, subButton, display, calc;

//Actions

//Set Value of Operand in Model
-(IBAction)digitPressed:(UIButton *)sender{
    if(self.calc.operationType == 0){
        // No Operation has been set, so set operandA
        self.calc.operandA = [NSNumber numberWithInt:(self.calc.operandA.intValue * 10) + sender.tag];
        
        self.display.text = self.calc.operandA.stringValue;
    }else{
        // Operation has been set, so set operandB
        self.calc.operandB = [NSNumber numberWithInt:(self.calc.operandB.intValue * 10) + sender.tag];
        
        self.display.text = self.calc.operandB.stringValue;
    }
}

-(IBAction)operationPressed:(UIButton *)sender{
    
    self.calc.operationType = sender.tag - 10;
}

-(IBAction)equalPressed:(UIButton *)sender{
    self.calc.operandA = [self.calc performOperation];
    
    self.display.text = self.calc.operandA.stringValue;
}

-(IBAction)clearPressed:(UIButton *)sender{
    self.calc.operandA = [NSNumber numberWithInt: 0];
    self.calc.operandB = [NSNumber numberWithInt: 0];
    self.display.text = @"";
}

-(IBAction)backspacePressed:(UIButton *)sender{
    if(self.calc.operationType == 0){
        self.calc.operandA = [NSNumber numberWithInt:(self.calc.operandA.intValue / 10)];
        
        self.display.text = self.calc.operandA.stringValue;
    }else{
        self.calc.operandB = [NSNumber numberWithInt:(self.calc.operandB.intValue / 10)];
        
        self.display.text = self.calc.operandB.stringValue;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create Calculator Model Object in Memory (Alloc/Init)
    self.calc = [[CalculatorBrain alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}





/*
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}
*/
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
