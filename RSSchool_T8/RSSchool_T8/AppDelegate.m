//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Mishka on 16.07.2021.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [UIView appearance].tintColor = UIColor.systemRedColor;
    
    self.window.rootViewController = [self rootViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (UIViewController *)rootViewController {
    
    UINavigationController *firstViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    
    return firstViewController;
}


@end
