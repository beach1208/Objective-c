//
//  InputHandler.h
//  Lab5
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
@property (nonatomic,strong) NSMutableArray *inputHistory;
+ (NSString *)getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt;
-(void) addHistory:(InputHandler *) addHistory;
-(NSString *)description;
@end
