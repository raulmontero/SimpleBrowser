//
//  BrowserController.h
//  SimpleBrowser
//
//  Created by Raul Montero on 17/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WebView;

@interface BrowserController : NSObject {

@private
    

}

@property (nonatomic, retain) IBOutlet WebView *myWebView;
@property (nonatomic, retain) IBOutlet NSTextField *UrlTextField;
@property (nonatomic, retain) IBOutlet NSButton *ForwardButton;
@property (nonatomic, retain) IBOutlet NSButton *BackButton;


- (IBAction) goForward:(id) sender;
- (IBAction) goBack:(id) sender;
- (IBAction) goUrl: (id) sender;

@end
