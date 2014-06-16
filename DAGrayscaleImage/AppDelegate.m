//
//  AppDelegate.m
//  DAGrayscaleImage
//
//  Created by Dejan on 01/06/14.
//  Copyright (c) 2014 Dejan. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [TestViewController new];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
