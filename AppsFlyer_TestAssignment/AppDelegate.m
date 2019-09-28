//
//  AppDelegate.m
//  AppsFlyer_TestAssignment
//
//  Created by Ivan Obodovskyi on 9/20/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

#import "AppDelegate.h"
#import <AppsFlyerLib/AppsFlyerTracker.h>
#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [AppsFlyerTracker sharedTracker].appsFlyerDevKey = @"kdvWyPv7NKsxzkvRrhMWfV";
  [AppsFlyerTracker sharedTracker].appleAppID = @"3241516171";
  
  
  [AppsFlyerTracker sharedTracker].delegate = self;
  [AppsFlyerTracker sharedTracker].isDebug = true;
  
  self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
  
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  
  UIViewController *viewController = [storyboard instantiateInitialViewController];
  
  self.window.rootViewController = viewController;
  [self.window makeKeyAndVisible];

  self.delegate = viewController;
  
  
  return YES;
}

- (void)onConversionDataReceived:(NSDictionary *)installData {
  [_delegate getConversionData:installData];
}

- (void)onAppOpenAttribution:(NSDictionary *)attributionData {
  
}

- (void)onConversionDataRequestFailure:(NSError *)error {
  NSLog(@"%@", error);
}

- (BOOL) application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id> *restorableObjects))restorationHandler {
  [[AppsFlyerTracker sharedTracker] continueUserActivity:userActivity restorationHandler:restorationHandler];
  return YES;
}



- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation {
  [[AppsFlyerTracker sharedTracker] handleOpenURL:url sourceApplication:sourceApplication withAnnotation:annotation];
  return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
            options:(NSDictionary *) options {
  [[AppsFlyerTracker sharedTracker] handleOpenUrl:url options:options];
  return YES;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  [[AppsFlyerTracker sharedTracker] trackAppLaunchWithCompletionHandler:^(NSDictionary<NSString *,id> *dictionary, NSError *error) {
    if (error) {
      NSLog(@"%@", error);
    }
    
    if (dictionary) {
      NSLog(@"%@", dictionary);
    }
    [NSException exceptionWithName: @"fatal error" reason: nil userInfo: nil];
  }];
}


- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
