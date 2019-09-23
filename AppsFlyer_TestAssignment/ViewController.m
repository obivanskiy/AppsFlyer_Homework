//
//  ViewController.m
//  AppsFlyer_TestAssignment
//
//  Created by Ivan Obodovskyi on 9/20/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
  [super viewDidLoad];
  [AppsFlyerTracker sharedTracker].delegate = self;
}

- (void)onConversionDataReceived:(NSDictionary *)installData {
  self.convertionData = installData;
  self.afStatusLabel.text = [NSString stringWithFormat: @"%@ %@", @"Status: ", installData[@"af_status"]];
  self.afMessageLabel.text = [NSString stringWithFormat: @"%@ %@", @"Message: ", installData[@"af_message"]];
;
  
  if (installData[@"is_first_launch"] == 0) {
    self.isFirstLaunchLable.text =  [NSString stringWithFormat: @"%@", @"Message: false"];
  } else {
    self.isFirstLaunchLable.text =  [NSString stringWithFormat: @"%@", @"Message: true"];
  }
}

@end
