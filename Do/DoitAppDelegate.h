//
//  DoitAppDelegate.h
//  Do
//
//  Created by Htedsv on 13-1-30.
//  Copyright (c) 2013年 htedsv. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface DoitAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *web;

@end
