//
//  main.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        while (YES) {
            AdditionQuestion *quest = [[AdditionQuestion alloc] init];
            NSString *prompt = [NSString stringWithFormat: @"%@: ", quest.question];
            NSString *strInput = [InputHandler getUserInputWithMax: 255 AndPrompt: prompt];
            if ([[strInput lowercaseString] isEqualToString: @"q"]) { break; }
            
            if ([strInput intValue] == quest.answer) {
                NSLog(@"Right");
                score.cntRight++;
            } else {
                NSLog(@"Wrong");
                score.cntWrong++;
            }
        }
        [score displayResult];
    }
    return 0;
}

