//
//  AppDelegate.m
//  number-problems
//
//  Created by MARGARET MORRIS on 9/5/14.
//  Copyright (c) 2014 Margaret Blue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


//Add a method called iterateCount that takes an integer
//The method should call itself and decrement the integer until the value is 0
//Print the integer with the text "Iterate [integer]" where the integer gets printed
//It should decrement the integer using operator shorthand.
//In the didFinishLaunching method, call iterateCount and pass in 4

- (NSInteger)iterateCount:(NSInteger) number{
    NSInteger countValue = number;
    NSLog(@"Iterate %d", countValue);
    if(countValue == 0) {
        return countValue;
    } else {
        countValue --;
        [self iterateCount: countValue];
        return countValue;
    }
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self iterateCount:4];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
