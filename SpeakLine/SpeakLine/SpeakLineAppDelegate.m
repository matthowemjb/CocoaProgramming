//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Matt Howe on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate
@synthesize stopButton = _stopButton;
@synthesize speakButton = _speakButton;
@synthesize tableView = _tableView;

@synthesize window = _window;
@synthesize textField = _textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_tableView setDataSource:self];
    [_tableView setDelegate:self];
}

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
        [_speechSynth setDelegate:self];
        _voices = [NSSpeechSynthesizer availableVoices];
    }
    return self;
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    NSString *methodName = NSStringFromSelector(aSelector);
    NSLog(@"respondsToSelector: %@", methodName);
    return [super respondsToSelector:aSelector];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    return (NSInteger)[_voices count];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)
                                            tableColumn row:(NSInteger)row
{
    NSString *v = [_voices objectAtIndex:row];
    NSDictionary *voiceDict = [NSSpeechSynthesizer attributesForVoice:v];
    return [voiceDict objectForKey:NSVoiceName];
//    return v;
}

// 
- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger row = [_tableView selectedRow];
    if (row == -1) {
        return;
    }
    NSString *selectedVoice = [_voices objectAtIndex:row];
    [_speechSynth setVoice:selectedVoice];
    NSLog(@"voice changed to: %@", selectedVoice);
    [self stopIt:self];
    [self speakIt:self];
    
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender 
        didFinishSpeaking:(BOOL)finishedSpeaking
{
    NSLog(@"SpeechSynthesizer finished speaking = %d", finishedSpeaking);
        [_stopButton setEnabled:NO];
        [_speakButton setEnabled:YES];
    //[_tableView setEnabled:YES];
}

- (IBAction)speakIt:(id)sender 
{
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"The string value from %@ is 0 length", _textField);
        return;
    }
    [_stopButton setEnabled:YES];
    [_speakButton setEnabled:NO];
    [_speechSynth startSpeakingString:string];
    NSLog(@"Started saying: %@", string);
  
    //[_tableView setEnabled:NO];
}

- (IBAction)stopIt:(id)sender{
    NSLog(@"Stopping");
    [_speechSynth stopSpeaking];
    [_stopButton setEnabled:NO];
    [_speakButton setEnabled:YES];
}
@end
