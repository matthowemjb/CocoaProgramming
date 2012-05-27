//
//  main.m
//  lottery
//
//  Created by Matt Howe on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for (i = 0; i < 10; i++)
        {
            NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
            [array addObject:newNumber];
        }
        for (i = 0; i < [array count]; i++)
        {
            NSNumber *numberToPrint = [array objectAtIndex:i];
            NSLog(@"Number at index %d has value %@", i, numberToPrint);
        }
        
    }
    return 0;
}

