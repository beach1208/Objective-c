//
//  InputHandler.m
//  Lab5
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputHistory = [NSMutableArray new];
    }
    return self;
}

//function class


+ (NSString *)getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt{
    if(maxLength <1){
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars,maxLength,stdin);
    NSString *result = [NSString stringWithCString: cstring encoding: NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
    
}

-(NSString *)description{
    int count = 0;
    NSMutableString *result = [NSMutableString new];
    NSInteger arrayLength = [_inputHistory count] - 1;
    while(count < 3){
        NSString *commandHistory = [NSString stringWithFormat:@"%@", _inputHistory[arrayLength]];
        count++;
        arrayLength--;
        [result appendString:commandHistory];
    }
    return result;
}

@end
