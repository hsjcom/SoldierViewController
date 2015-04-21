//
//  HBTableViewDataSource.h
//  SoldierViewController
//
//  Created by Soldier on 15-2-3.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HBModal.h"
#import <UIKit/UIKit.h>

@protocol HBTableViewDataSource <UITableViewDataSource>

- (id)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;

- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object;

- (NSIndexPath *)tableView:(UITableView *)tableView indexPathForObject:(id)object;

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell willAppearAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface HBTableViewDataSource : NSObject <HBTableViewDataSource>

@property(nonatomic, strong) NSMutableArray *items;

+ (HBTableViewDataSource *)dataSourceWithItems:(NSMutableArray *)items andLayout:(id)layout;

+ (HBTableViewDataSource *)dataSourceWithItems:(NSMutableArray *)items separateItem:(id)separateItem andLayout:(id)layout;

+ (HBTableViewDataSource *)dataSourceWithItems:(NSMutableArray *)items;

@end
