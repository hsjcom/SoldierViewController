//
//  HBTableViewController.m
//  SoldierViewController
//
//  Created by Soldier on 15-2-2.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "HBTableViewController.h"
#import "CLLRefreshHeadController.h"
#import "HBTableViewCell.h"

@interface HBTableViewController ()

@property (nonatomic, strong) CLLRefreshHeadController *refreshControll;

@end


@implementation HBTableViewController

- (void)dealloc {
    self.arr = nil;
    self.dataSource = nil;
    self.tableView = nil;
    self.refreshControll = nil;
}

- (CLLRefreshHeadController *)refreshControll {
    if (!_refreshControll) {
        _refreshControll = [[CLLRefreshHeadController alloc] initWithScrollView:self.tableView viewDelegate:self];
    }
    _refreshControll.isPullDownRefreshed = [self canPullDownRefreshed];
    _refreshControll.isPullUpLoadMore = [self canPullUpLoadMore];

    return _refreshControll;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.refreshControll startPullDownRefreshing];
}

- (void)loadView{
    [super loadView];
    
    [self tableView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"HBTableViewController";
    self.arr= [NSMutableArray array];
}

- (UITableView *)tableView {
    if (nil == _tableView) {
        _tableView = [[UITableView alloc] initWithFrame:[self tableViewFrame]];
        _tableView.delegate = self;

        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (CGRect)tableViewFrame {
    CGRect rect = self.view.bounds;
    return rect;
}

- (BOOL)canPullDownRefreshed{
    return YES;
    
}

- (BOOL)canPullUpLoadMore{
    return YES;
}

- (void)endRefresh {
    
    NSMutableArray *data = [[NSMutableArray alloc] initWithObjects:@"I am soldier", @"keep growing", @"keep growing", @"keep growing", @"keep growing", @"keep growing", @"fuck everything", @"fuck everything", @"fuck everything", @"fuck everything", @"fuck everything", @"i am CEO", @"i am CEO", @"i am CEO", @"i am CEO", nil];    self.arr = data;
    [self.tableView reloadData];
    [self.refreshControll endPullDownRefreshing];
}

- (void)endLoadMore {
    
    NSMutableArray *data = [[NSMutableArray alloc] initWithObjects:[NSString stringWithFormat:@"加载更多:%@", @"更多"], nil];
    
    for (int i = 2; i <= 15; i++) {
        NSString *str = [NSString stringWithFormat:@"I am soldier %d", i];
        [data addObject:str];
    }
    
    [self.arr addObjectsFromArray:data];
    [self.tableView reloadData];
    
    [self.refreshControll endPullUpLoading];
}

- (void)setDataSource:(id <HBTableViewDataSource>)dataSource {
    if (dataSource != _dataSource) {
        _dataSource = dataSource;
        _tableView.dataSource = _dataSource;
        [_tableView reloadData];
    }
}

- (void)didBeginDragging{
}

- (void)didEndDragging{
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    id <HBTableViewDataSource> dataSource = (id <HBTableViewDataSource>) tableView.dataSource;
    id object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    Class cls = [dataSource tableView:tableView cellClassForObject:object];
    return [cls tableView:tableView rowHeightForObject:object];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark -



#pragma mark - CLLRefreshHeadContorllerDelegate
- (CLLRefreshViewLayerType)refreshViewLayerType {
    return CLLRefreshViewLayerTypeOnScrollViews;
}

- (BOOL)keepiOS7NewApiCharacter {
    if (!self.navigationController)
        return NO;
    BOOL keeped = [[[UIDevice currentDevice] systemVersion] integerValue] >= 7.0;
    return keeped;
}

- (void)beginPullDownRefreshing {
    [self performSelector:@selector(endRefresh) withObject:nil afterDelay:1];
}

- (void)beginPullUpLoading {
    [self performSelector:@selector(endLoadMore) withObject:nil afterDelay:0.5];
}

//是显示更多
- (BOOL)hasRefreshFooterView {
//    if (self.arr.count > 0 && loadCount < Max_Count) {
//        return YES;
//    }
    return YES;
}

#pragma mark -


#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self didBeginDragging];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    [self didEndDragging];
}


@end
