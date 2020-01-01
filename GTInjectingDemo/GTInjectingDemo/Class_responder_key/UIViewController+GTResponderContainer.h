//
//  UIViewController+GTResponderContainer.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+GTInvocation.h"

@class GTResponderEventProxy;
@interface UIViewController (GTResponderContainer)

@property (nonatomic, strong) GTResponderEventProxy *reponderEventProxy;

@end

// 基类，可继承覆盖此类
@interface GTResponderEventProxy : NSObject

// 子类重写..
- (void)handleForKey:(NSString *)key msgSource:(id)msgSource objects:(NSArray *)objects;

#pragma mark -

- (void)addValue:(NSInvocation *)invocation forKey:(NSString *)key;

- (void)removeObjectForKey:(NSString *)key;

- (NSInvocation *)objectForKey:(NSString *)key;

@end
