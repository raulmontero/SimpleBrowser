//
//  BrowserController.m
//  SimpleBrowser
//
//  Created by Raul Montero on 17/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BrowserController.h"
#import "Webkit/WebKit.h"

@implementation BrowserController

@synthesize BackButton,ForwardButton,UrlTextField,myWebView;


- (void) resetButtons
{
    [self.BackButton setEnabled:[self.myWebView canGoBack]];
    [self.ForwardButton setEnabled:[self.myWebView canGoForward]];
}

- (void) awakeFromNib
{
    [self.UrlTextField setStringValue:@"http://pragprog.com"];
    [self goUrl:self.UrlTextField];
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction) goBack:(id)sender
{
    [myWebView goBack:sender];
    [self resetButtons];
}

- (IBAction) goForward:(id)sender
{
    [myWebView goForward:sender];
    [self resetButtons];
}

- (IBAction) goUrl: (id) sender;
{
    [self.myWebView takeStringURLFrom:sender];
    [self resetButtons];
}

- (void)dealloc
{
    self.BackButton = nil;
    self.ForwardButton = nil;
    self.UrlTextField = nil;
    self.myWebView = nil;
    
    [super dealloc];
}

@end
