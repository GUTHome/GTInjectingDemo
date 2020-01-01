//
//  UIResponder+GTResponder.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/21.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "UIResponder+GTResponder.h"
#import "NSObject+GTPerformSelector.h"

@implementation UIResponder (GTResponder)

- (void)routerEventWithSelectorName:(NSString *)selector msgSource:(id)msgSource object:(id)object{
    NSArray *array = object ? @[object] : @[];
    [self routerEventWithSelectorName:selector msgSource:msgSource objects:array];
}
- (void)routerEventWithSelectorName:(NSString *)selector msgSource:(id)msgSource objects:(NSArray *)objects{
    SEL sel = NSSelectorFromString(selector);
    if (!sel) {
        NSString *info = [NSString stringWithFormat:@"-[%@ %@]:invalid selector sent to instance", self.class, selector];
        @throw [[NSException alloc] initWithName:@"invalid selector" reason:info userInfo:nil];
    }
    if ([self respondsToSelector:sel]) {
        
        objects = objects?:@[];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:(1+objects.count)];
        
        // 1.处理msgSource,保障第一位参数是targetSource
        [array addObject:(msgSource?:[NSNull null])];
        
        // 2.处理业务参数
        [array addObjectsFromArray:objects];
        
        // 3.转发消息
        [self gt_performSelector:sel objects:array];
    } else {
        [[self nextResponder] routerEventWithSelectorName:selector msgSource:msgSource objects:objects];
    }
}

@end
