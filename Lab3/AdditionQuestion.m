//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init {
    self = [super init];
    if (self) {
        // between 10 and 100
        int random1 = arc4random_uniform(90) + 10;
        int random2 = arc4random_uniform(90) + 10;
        NSString *quest = [NSString stringWithFormat: @"%d + %d ?", random1, random2];
        _question = quest;
        _answer = random1 + random2;
    }
    return self;
}

@end
