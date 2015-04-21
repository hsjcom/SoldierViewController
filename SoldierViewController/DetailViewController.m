//
//  DetailViewController.m
//  SoldierViewController
//
//  Created by Soldier on 15-2-2.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "DetailViewController.h"

#import "HBModalViewController.h"
#import "HBTableViewController.h"
#import "TestController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    
//    HBModalViewController *modalViewController = [[HBModalViewController alloc] init];
//    [self.navigationController pushViewController:modalViewController animated:YES];
    
//    HBTableViewController *tableviewController = [[HBTableViewController alloc] init];
//    [self.navigationController pushViewController:tableviewController animated:YES];
    
    TestController *testController = [[TestController alloc] init];
    [self.navigationController pushViewController:testController animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
