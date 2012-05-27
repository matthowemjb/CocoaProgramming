//
//  LotteryEntry.h
//  lottery
//
//  Created by Matt Howe on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject 
{
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}
- (id)initWithEntryDate:(NSDate *)date;
- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
