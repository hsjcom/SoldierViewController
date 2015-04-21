//
//  HBModal.h
//  SoldierViewController
//
//  Created by Soldier on 15-2-3.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HBModal : NSObject

@property(nonatomic, strong) NSMutableArray *delegates;
@property(nonatomic, strong) NSMutableArray *items;
@property(nonatomic, strong) NSString *msg;

@property(nonatomic) BOOL isFirstLoading;
@property(nonatomic) BOOL isLoading;
@property(nonatomic) BOOL isLoadingMore;
@property(nonatomic, strong) NSDate *loadedTime;
@property(nonatomic) BOOL hasNoMore;
@property(nonatomic) BOOL responseSuccess;

- (BOOL)isLoaded;

/**
 * Indicates that the data is in the process of loading.
 *
 * Default implementation returns NO.
 */
- (BOOL)isLoading;

/**
 * Indicates that the data is in the process of loading additional data.
 *
 * Default implementation returns NO.
 */
- (BOOL)isLoadingMore;

/**
 * Indicates that the model is of date and should be reloaded as soon as possible.
 *
 * Default implementation returns NO.
 */
- (BOOL)isOutdated;

/**
 * Cancels a load that is in progress.
 *
 * Default implementation does nothing.
 */
- (void)cancel;

/**
 * Invalidates data stored in the cache or optionally erases it.
 *
 * Default implementation does nothing.
 */
- (void)invalidate:(BOOL)erase;

/**
 * An array of objects that conform to the HBModelDelegate protocol.
 */
- (NSMutableArray *)delegates;

- (float)downloadProgress;

- (void)didStartLoad;

- (void)didFinishLoad;

- (void)didFailLoadWithError:(NSError *)error;

- (void)clearCache;

- (void)loadData;

- (NSString *)requestUrl;

- (NSTimeInterval)cacheExpirationAge;

- (NSTimeInterval)timeoutInterval;


@end
