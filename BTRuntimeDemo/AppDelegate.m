//
//  AppDelegate.m
//  BTRuntimeDemo
//
//  Created by Blacktea on 2017/5/3.
//  Copyright © 2017年 Blacktea. All rights reserved.
//

#import "AppDelegate.h"
#import "BTSignatureObject.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self testInstancenMethodSign];
    [self testClassMethodSign];
    [self testInstanceResponse];
    [self testClassResponse];
    [self testinstanceMethodForInstanceSelector];
    [self testinstanceMethodForClassSelector];
    return YES;
}

- (void)testInstancenMethodSign {
    BTSignatureObject *object = [BTSignatureObject new];
    SEL selector = NSSelectorFromString(@"testFirst");
    NSMethodSignature *instanceSign = [object methodSignatureForSelector:selector];
    NSMethodSignature *classSign = [BTSignatureObject methodSignatureForSelector:selector];
    NSLog(@"%s \n instanceObjectSign = %@ \n classObjectSign = %@ \n", __FUNCTION__, instanceSign, classSign);
}

- (void)testClassMethodSign {
    BTSignatureObject *object = [BTSignatureObject new];
    SEL selector = NSSelectorFromString(@"testSecond");
    NSMethodSignature *instanceSign = [object methodSignatureForSelector:selector];
    NSMethodSignature *classSign = [BTSignatureObject methodSignatureForSelector:selector];
    NSLog(@"%s \n instanceSign = %@ \n classSign = %@ \n",__FUNCTION__, instanceSign, classSign);
}

- (void)testInstanceResponse {
    BTSignatureObject *object = [BTSignatureObject new];
    SEL selector1 = NSSelectorFromString(@"testFirst");
    SEL selector2 = NSSelectorFromString(@"testSecond");

    BOOL isRes1 = [object respondsToSelector:selector1];
    BOOL isRes2 = [object respondsToSelector:selector2];
    NSLog(@"%s \n BTSignatureObject Class: \n instanceMethod isRes1 = %d \n classMethod isRes2 = %d \n", __FUNCTION__, isRes1, isRes2);
}

- (void)testClassResponse {
    SEL selector1 = NSSelectorFromString(@"testFirst");
    SEL selector2 = NSSelectorFromString(@"testSecond");
    BOOL isRes1 = [BTSignatureObject instancesRespondToSelector:selector1];
    BOOL isRes2 = [BTSignatureObject instancesRespondToSelector:selector2];
    NSLog(@"%s \n BTSignatureObject instance: \n instanceMethod isRes1 = %d \n classMethod isRes2 = %d \n", __FUNCTION__, isRes1, isRes2);

}

- (void)testinstanceMethodForInstanceSelector {
    SEL selector = NSSelectorFromString(@"testFirst");
    NSMethodSignature *classSign = [BTSignatureObject instanceMethodSignatureForSelector:selector];
    NSLog(@"%s \n  classObjectSign = %@ \n", __FUNCTION__, classSign);
}

- (void)testinstanceMethodForClassSelector {
    SEL selector = NSSelectorFromString(@"testSecond");
    NSMethodSignature *classSign = [BTSignatureObject instanceMethodSignatureForSelector:selector];
    NSLog(@"%s \n classSign = %@ \n",__FUNCTION__,  classSign);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
