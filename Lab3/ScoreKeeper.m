//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) displayResult {
    float percent = (float)0;
    if (_cntRight != 0 || _cntWrong != 0) {
        percent = (float)_cntRight / (_cntRight + _cntWrong) * 100;
    }
    NSLog(@"score: %ld right, %ld wrong ---- %0.f%%", (long)_cntRight, (long)_cntWrong, percent);
}

@end
