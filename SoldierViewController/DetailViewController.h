//
//  DetailViewController.h
//  SoldierViewController
//
//  Created by Soldier on 15-2-2.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

