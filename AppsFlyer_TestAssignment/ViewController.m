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
  _myFirstObjCString = @"This is my first Obj-C written app with AppFlyer SDK implemented, so, Hello, world!";
}


- (IBAction)pressMeButtonPressed:(id)sender {
  _label.text = [NSString stringWithFormat: @"%@", _myFirstObjCString];
}
@end
