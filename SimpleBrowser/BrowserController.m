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

@synthesize BackButton,ForwardButton,UrlTextField,myWebView,spinner;


#pragma mark --
#pragma mark Controller utility methods

- (void) resetButtons
{
    [self.BackButton setEnabled:[self.myWebView canGoBack]];
    [self.ForwardButton setEnabled:[self.myWebView canGoForward]];
}

#pragma mar --
#pragma mark Initialization

- (id)init
{
    self = [super init];
    if (self) {
    // Initialization code here.
    }
    
    return self;
}

- (void) awakeFromNib /* método que se lanza una vez se ha cargado el fichero nib */
{
    [self.UrlTextField setStringValue:@"http://pragprog.com"];
    [self goUrl:self.UrlTextField];
}

#pragma mark --
#pragma mark IBAction methods

- (IBAction) goBack:(id)sender
{
    [myWebView goBack:sender];
    //[self resetButtons];
}

- (IBAction) goForward:(id)sender
{
    [myWebView goForward:sender];
    //[self resetButtons];
}

- (IBAction) goUrl: (id) sender;
{
    [self.myWebView takeStringURLFrom:sender];
    //[self resetButtons];
}



#pragma mark --
#pragma mark Webview Delegate methods

- (void) webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{
    [[myWebView window] setTitle:title]; //el método window devuelve el "window" que contiene a la view.
}

-(void) webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
    [self.spinner startAnimation:sender];
}

- (void) webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    [self.spinner stopAnimation:sender];
    [self resetButtons];
}

#pragma mark --
#pragma mark Memory Management


- (void)dealloc
{
    self.BackButton = nil;
    self.ForwardButton = nil;
    self.UrlTextField = nil;
    self.myWebView = nil;
    
    [super dealloc];
}

@end
