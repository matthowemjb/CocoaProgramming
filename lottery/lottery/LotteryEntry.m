//
//  LotteryEntry.m
//  lottery
//
//  Created by Matt Howe on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)init
{
    return [self initWithEntryDate:[NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        NSAssert(date != nil, @"Argument must not be nil");
        [self setEntryDate:date];
        [self prepareRandomNumbers];
    }
    return self;
}

- (void)prepareRandomNumbers
{
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
}

- (void)setEntryDate:(NSDate *)date
{
    entryDate = [date retain];
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
    NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"zu_ZA"];
    [df setLocale:usLocale];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result =[NSString stringWithFormat:@"%@ = %d and %d", 
            [df stringFromDate:entryDate], 
            firstNumber, secondNumber];
    [usLocale release];
    [df release];
    return result;
}

- (void)dealloc
{
    [entryDate release];
    [super dealloc];
}

+ (void)printLocaleIdentifiers
{
    for (NSString *localeIdentifier in [NSLocale availableLocaleIdentifiers])
    {
        NSLog(@"%@", localeIdentifier);
    }
}

@end
