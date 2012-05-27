//
//  LotteryEntry.m
//  lottery
//
//  Created by Matt Howe on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (void)prepareRandomNumbers
{
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
}

- (void)setEntryDate:(NSDate *)date
{
    entryDate = date;
}

- (NSDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    //Return pointer to NSString object describing LotteryEntry
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    //NSString *result;
    //result = 
    return [[NSString alloc] initWithFormat:@"%@ = %d and %d", 
            [df stringFromDate:entryDate], 
            firstNumber, secondNumber];
    //return result;
    
}

@end
