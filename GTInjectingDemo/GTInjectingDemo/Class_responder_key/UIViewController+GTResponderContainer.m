//
//  UIViewController+GTResponderContainer.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "UIViewController+GTResponderContainer.h"
#import <objc/runtime.h>
#import "NSObject+GTPerformSelector.h"

@implementation UIViewController (GTResponderContainer)

- (void)setReponderEventProxy:(GTResponderEventProxy *)reponderEventProxy{
    objc_setAssociatedObject(self, @selector(reponderEventProxy), reponderEventProxy, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (GTResponderEventProxy *)reponderEventProxy{
    GTResponderEventProxy *proxy = (GTResponderEventProxy *)objc_getAssociatedObject(self, @selector(reponderEventProxy));
    if (!proxy) {
        proxy = [[GTResponderEventProxy alloc] init];
        [self setReponderEventProxy:proxy];
    }
    return proxy;
}

@end

@interface GTResponderEventProxy ()

@property (nonatomic, strong) NSMutableDictionary <NSString *, NSInvocation *>*eventStrategy;

@end

@implementation GTResponderEventProxy

- (void)addValue:(NSInvocation *)invocation forKey:(NSString *)key{
    if (!invocation || !key) {
        return;
    }
    if (![self.eventStrategy.allKeys containsObject:key]) {
        [self.eventStrategy setValue:invocation forKey:key];
    }
}

- (void)removeObjectForKey:(NSString *)key{
    if ([self.eventStrategy.allKeys containsObject:key]) {
        [self.eventStrategy removeObjectForKey:key];
    }
}

// 子类重写..
- (void)handleForKey:(NSString *)key msgSource:(id)msgSource objects:(NSArray *)objects{
    
    NSInvocation *invocation = [self objectForKey:key];
    if (invocation) {
        
        objects = objects?:@[];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:(1+objects.count)];
        
        // 1.处理msgSource,保障第一位参数是targetSource
        [array addObject:(msgSource?:[NSNull null])];
        
        // 2.处理业务参数
        [array addObjectsFromArray:objects];
        
        // 3.转发消息[注意target是谁，谁就负责响应事件]
        [invocation.target gt_performSelector:invocation.selector objects:array];
    }
}

- (NSInvocation *)objectForKey:(NSString *)key{
    NSInvocation *invocation = nil;
    if ([self.eventStrategy.allKeys containsObject:key]) {
        invocation = [self.eventStrategy objectForKey:key];
    }
    return invocation;
}


#pragma mark -

- (NSMutableDictionary <NSString *, NSInvocation *>*)eventStrategy{
    if (!_eventStrategy) {
        _eventStrategy = [NSMutableDictionary dictionary];
    }
    return _eventStrategy;
}

@end

