//
//  CountCharactersAppDelegate.m
//  CountCharacters
//
//  Created by Matt Howe on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CountCharactersAppDelegate.h"

@implementation CountCharactersAppDelegate

@synthesize window = _window;
@synthesize textToDisplay = _textToDisplay;
@synthesize textField = _textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self countCharacters:self];
    // Have to wait for _textField to be initialized.
    [_textField setDelegate:self];
    NSLog(@"textField delegate: %@", [_textField delegate]);
}

- (id)init
{
    self = [super init];
    return self;
}

- (void)controlTextDidChange:aNotification
{
    [self countCharacters:self];
}

- (IBAction)countCharacters:(id)sender 
{
    [_textToDisplay setIntegerValue:[[_textField stringValue] length]];
}

@end
