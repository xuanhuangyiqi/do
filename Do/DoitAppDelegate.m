//
//  DoitAppDelegate.m
//  Do
//
//  Created by Htedsv on 13-1-30.
//  Copyright (c) 2013年 htedsv. All rights reserved.
//

#import "DoitAppDelegate.h"

@implementation DoitAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [[self.web mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://i.doit.im/home"]]];
    //[[[NSApplication sharedApplication] dockTile] setBadgeLabel:@"123"];
    NSLog(@"123");
    [self.web setFrameLoadDelegate:self];

}
- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{
    NSLog(title);
    if ([title hasPrefix:@"("])
    {
        NSRange range = [title rangeOfString:@")"];
        NSString *st = [title substringWithRange:NSMakeRange(1, range.location-1)];
        [[[NSApplication sharedApplication] dockTile] setBadgeLabel:st];

    }
}

@end
