//
//  ToDoListAppDelegate.m
//  ToDoList
//
//  Created by Matt Howe on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ToDoListAppDelegate.h"

@implementation ToDoListAppDelegate
@synthesize noteTable = _noteTable;

@synthesize window = _window;
@synthesize textField = _textField;

- (id)init
{
    self = [super init];
    if (self) {
        _notes = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_noteTable setDataSource:self];
    [_textField setDelegate:self];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    //NSLog(@"numberOfRows: %ld", [_notes count]);
    return (NSInteger)[_notes count];
}

- (IBAction)addNote:(id)sender 
{
    //NSLog(@"textField: %@", [_textField stringValue]);
    [_notes addObject:[_textField stringValue]];
    //NSLog(@"added %@ to _notes", [_notes lastObject]);
    [_noteTable reloadData];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    //NSLog(@"row: %ld", row);
    return [_notes objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSLog(@"setObject: %@", object);
    [_notes replaceObjectAtIndex:row withObject:object];
    [_noteTable reloadData];
}

- (void)controlTextDidChange:(NSNotification *)obj
{
//    NSLog(@"textField: %@", [_textField stringValue]);
}


@end
