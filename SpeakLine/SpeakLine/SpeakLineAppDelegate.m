//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Matt Howe on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    }
    return self;
}

- (IBAction)speakIt:(id)sender 
{
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"The string value from %@ is 0 length", _textField);
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"Started saying: %@", string);
}

- (IBAction)stopIt:(id)sender{
    NSLog(@"Stopping");
    [_speechSynth stopSpeaking];
}
@end
