//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger cntRight;
@property (nonatomic, assign) NSInteger cntWrong;

- (void) displayResult;

@end

NS_ASSUME_NONNULL_END
