//
//  SimpleBrowserAppDelegate.h
//  SimpleBrowser
//
//  Created by Raul Montero on 14/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SimpleBrowserAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
