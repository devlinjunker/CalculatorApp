//
//  CalculatorBrain.h
//  calculatorApp
//
//  Created by kuwaharg on 10/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

enum operationType {
    addType = 1,
    subtractType = 2
    };

@interface CalculatorBrain : NSObject

//Operands
@property (nonatomic, strong) NSNumber *operandA;
@property (nonatomic, strong) NSNumber *operandB;

//Operation Type
@property int operationType;

//Function
-(NSNumber *) performOperation;



@end
