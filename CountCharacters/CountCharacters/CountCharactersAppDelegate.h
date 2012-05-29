//
//  CountCharactersAppDelegate.h
//  CountCharacters
//
//  Created by Matt Howe on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CountCharactersAppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textToDisplay;
@property (weak) IBOutlet NSTextField *textField;

- (IBAction)countCharacters:(id)sender;

@end
