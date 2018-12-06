//
//  ViewController.m
//  DemoApp
//
//  Created by August Lilleaas on 06/12/2018.
//  Copyright © 2018 August Lilleaas. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeDelegate.h>

@interface ViewController () <RCTBridgeDelegate>

@end

@implementation ViewController

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
    return [NSURL URLWithString:@"http://localhost:8081/index-dev.ios.bundle?platform=ios"];
}

- (void)loadView {
    RCTBridge* bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    RCTRootView* rootView = [[RCTRootView alloc] initWithBridge:bridge moduleName:@"RNIosTest" initialProperties:nil];
    self.view = rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
