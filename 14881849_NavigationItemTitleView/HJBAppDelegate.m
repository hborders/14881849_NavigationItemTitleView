//
//  HJBAppDelegate.m
//  14881849_NavigationItemTitleView
//
//  Created by Heath Borders on 8/30/13.
//  Copyright (c) 2013 Heath Borders. All rights reserved.
//

#import "HJBAppDelegate.h"

@implementation HJBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *viewController = [UIViewController new];
    
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    titleButton.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    titleButton.frame = CGRectMake(0, 0, 50, 44);
    [titleButton setTitle:@"Title"
                 forState:UIControlStateNormal];
    
    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                                       style:UIBarButtonItemStylePlain
                                                                                      target:self
                                                                                      action:@selector(leftBarButtonItemTouchUpInside)];
    viewController.navigationItem.titleView = titleButton;
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - actions

- (void)leftBarButtonItemTouchUpInside {
    
}

@end
