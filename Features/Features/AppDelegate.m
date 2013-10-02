//
//  AppDelegate.m
//  Features
//
//  Created by Tolik Shevchenko on 10/2/13.
//  Copyright (c) 2013 Tolik Shevchenko. All rights reserved.
//

#import "AppDelegate.h"
#import "NetworkInfo.h"

@interface AppDelegate()<UIAlertViewDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSString *routerIP = [NetworkInfo routerIP];
    NSString *deviceIP = [NetworkInfo deviceIP];
    
    NSLog(@"router IP:%@\ndevice IP:%@", routerIP, deviceIP);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hi"
                               message:[NSString stringWithFormat:@"router IP:%@\ndevice IP:%@", routerIP, deviceIP] delegate:nil
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil];
    alert.delegate = self;
    [alert show];
    
    return YES;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    exit(0);
}

@end
