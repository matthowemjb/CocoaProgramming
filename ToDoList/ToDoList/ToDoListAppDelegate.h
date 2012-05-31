//
//  ToDoListAppDelegate.h
//  ToDoList
//
//  Created by Matt Howe on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToDoListAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTextFieldDelegate, NSTableViewDelegate>
{
    NSMutableArray *_notes;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
- (IBAction)addNote:(id)sender;
@property (weak) IBOutlet NSTableView *noteTable;

@end
