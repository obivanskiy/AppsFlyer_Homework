//
//  ViewController.h
//  AppsFlyer_TestAssignment
//
//  Created by Ivan Obodovskyi on 9/20/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AppsFlyerLib/AppsFlyerTracker.h>

@interface ViewController : UIViewController <AppsFlyerTrackerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *afStatusLabel;
@property (weak, nonatomic) IBOutlet UILabel *afMessageLabel;
@property (weak, nonatomic) IBOutlet UILabel *isFirstLaunchLable;

- (void)setConversionData:(NSDictionary *)data;

@end

