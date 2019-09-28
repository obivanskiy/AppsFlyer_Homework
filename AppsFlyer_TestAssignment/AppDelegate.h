//
//  AppDelegate.h
//  AppsFlyer_TestAssignment
//
//  Created by Ivan Obodovskyi on 9/20/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AppsFlyerLib/AppsFlyerTracker.h>

@protocol ConversionDataDelegate

- (void)getConversionData:(NSDictionary *)data;

@end


@interface AppDelegate : UIResponder <UIApplicationDelegate, AppsFlyerTrackerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (weak, nonatomic) id <ConversionDataDelegate> delegate;


@end


