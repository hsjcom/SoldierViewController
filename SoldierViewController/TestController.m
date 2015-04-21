//
//  TestController.m
//  SoldierViewController
//
//  Created by Soldier on 15-2-3.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "TestController.h"

@implementation TestController

- (void)loadView{
    [super loadView];
    
     NSMutableArray *data = [[NSMutableArray alloc] initWithObjects:@"I am soldier", @"keep growing", @"keep growing", @"keep growing", @"keep growing", @"keep growing", @"fuck everything", @"fuck everything", @"fuck everything", @"fuck everything", @"fuck everything", @"i am CEO", @"i am CEO", @"i am CEO", @"i am CEO", nil];
    self.dataSource = [HBTableViewDataSource dataSourceWithItems:data];
}

- (BOOL)canPullUpLoadMore{
    return YES;
}

- (BOOL)canPullDownRefreshed{
    return YES;
}

- (void)endLoadMore {
    [super endLoadMore];
    self.dataSource = [HBTableViewDataSource dataSourceWithItems:self.arr];
}

@end
