//
//  HBModal.m
//  SoldierViewController
//
//  Created by Soldier on 15-2-3.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "HBModal.h"

@implementation HBModal

- (void)dealloc {
    self.delegates = nil;
    self.items = nil;
    self.msg = nil;
}

- (id)init {
    self = [super init];
    if (self) {
        _responseSuccess = NO;
       
        _isLoading = NO;
        _isFirstLoading = YES;
    }
    return self;
}

- (NSString *)requestUrl {
    return nil;
}

- (void)loadData {
    if (self.isLoading) {
        return;
    }
}


@end
