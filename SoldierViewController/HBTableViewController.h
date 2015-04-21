//
//  HBTableViewController.h
//  SoldierViewController
//
//  Created by Soldier on 15-2-2.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "HBModalViewController.h"
#import "CLLRefreshHeadController.h"
#import "HBTableViewDataSource.h"
//#import ""

@interface HBTableViewController : HBModalViewController<UITableViewDelegate, CLLRefreshHeadControllerDelegate>

@property(nonatomic, retain) id <HBTableViewDataSource> dataSource;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *arr;

- (UITableView *)tableView;

- (CGRect)tableViewFrame;

- (BOOL)canPullDownRefreshed;

- (BOOL)canPullUpLoadMore;

- (void)didBeginDragging;

- (void)didEndDragging;


- (void)endLoadMore;

@end
