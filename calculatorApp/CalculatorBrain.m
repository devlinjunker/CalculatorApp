//
//  CalculatorBrain.m
//  calculatorApp
//
//  Created by kuwaharg on 10/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

//Synthesize Getter/Setter (Also set name of backing variables)
@synthesize operandA = _operandA, operandB = _operandB, operationType = _operationType;

//Implement FUnction
-(NSNumber *) performOperation{
    
    switch (self.operationType) {
        case addType:
            return [NSNumber numberWithInt:self.operandA.integerValue + self.operandB.integerValue];
            break;
            
        case subtractType:
            return [NSNumber numberWithInt:self.operandA.integerValue - self.operandB.integerValue];
            break;
            
        default:
            return nil;
            break;
    }
}

//NSNumber numberWithInit is equal to the following:
//NSNumber *exampleNumber = [[NSNumber alloc] initWithInt:(some int val)];

@end
