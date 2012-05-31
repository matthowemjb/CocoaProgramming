//
//  FixedAspectAppDelegate.m
//  FixedAspect
//
//  Created by Matt Howe on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FixedAspectAppDelegate.h"

@implementation FixedAspectAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_window setDelegate:self];
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    NSSize newSize = NSMakeSize(frameSize.width, frameSize.height);
    newSize.height = newSize.width * 2.0 ;//(newSize.height / newSize.width);
    //CGFloat newHeight = frameSize.width * (frameSize.height / frameSize.width);
    NSLog(@"newHeight: %f", newSize.height);
    return newSize;
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    NSString *methodName = NSStringFromSelector(aSelector);
    NSLog(@"respondsToSelector:%@", methodName);
    return [super respondsToSelector:aSelector];
}


@end
