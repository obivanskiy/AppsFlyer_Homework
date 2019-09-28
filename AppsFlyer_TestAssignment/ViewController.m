//
//  ViewController.m
//  AppsFlyer_TestAssignment
//
//  Created by Ivan Obodovskyi on 9/20/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController () <ConversionDataDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)getConversionData:(NSDictionary *)data {
  dispatch_async(dispatch_get_main_queue(), ^{
    [self setConversionData:data];
  });
}


- (void)setConversionData:(NSDictionary *)data {
  if (data != nil) {
    self.afStatusLabel.text = [NSString stringWithFormat: @"%@ %@", @"Status: ", data[@"af_status"]];
    self.afMessageLabel.text = [NSString stringWithFormat: @"%@ %@", @"Message: ", data[@"af_message"]];
    
    if (data[@"is_first_launch"] == 0) {
      self.isFirstLaunchLable.text =  [NSString stringWithFormat: @"%@", @"Message: false"];
    } else {
      self.isFirstLaunchLable.text =  [NSString stringWithFormat: @"%@", @"Message: true"];
    }
  }
}


@end
