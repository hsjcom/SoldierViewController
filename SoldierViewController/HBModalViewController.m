//
//  HBModalViewController.m
//  RefreshLoadView
//
//  Created by Soldier on 15-2-2.
//  Copyright (c) 2015年 aikaola. All rights reserved.
//

#import "HBModalViewController.h"

@implementation HBModalViewController

- (void)dealloc {
    
}

- (void)loadView{
    [super loadView];
    self.title = @"HBModalViewController";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self createModel];
}

- (void)createModel {
}

@end
