//
//  RandomController.m
//  Random
//
//  Created by Matt Howe on 5/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender 
{
    //Generate a random integer between 1 and 100 inclusive
    int generated;
    generated = (int)(random() % 100) + 1;
    
    NSLog(@"generated = %d", generated);
    
    //Ask the text field to change its display
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender
{
    //Seed the random number generator with time
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator Seeded"];
}

@end
