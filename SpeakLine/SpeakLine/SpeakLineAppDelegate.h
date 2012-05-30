//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Matt Howe on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate,
                                            NSSpeechSynthesizerDelegate,
                                            NSTableViewDelegate,
                                            NSTableViewDataSource>
{
    NSSpeechSynthesizer *_speechSynth;
    NSArray *_voices;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

- (IBAction)stopIt:(id)sender;
- (IBAction)speakIt:(id)sender;

@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSButton *speakButton;
@property (weak) IBOutlet NSTableView *tableView;

@end
