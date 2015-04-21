//
//  HBTableViewCell.m
//  SoldierViewController
//
//  Created by Soldier on 15-2-3.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "HBTableViewCell.h"

@implementation HBTableViewCell

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object {
    return 64;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //todo self.
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (id)object {
    return nil;
}

- (void)prepareForReuse {
    self.object = nil;
    self.textLabel.text = nil;
    self.detailTextLabel.text = nil;
    [super prepareForReuse];
}

- (void)setObject:(id)object {
    NSString *title = (NSString *)object;
    self.textLabel.text = title;
}



@end
