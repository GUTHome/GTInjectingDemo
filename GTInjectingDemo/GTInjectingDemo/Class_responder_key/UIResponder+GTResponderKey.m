//
//  UIResponder+GTResponderKey.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "UIResponder+GTResponderKey.h"

@implementation UIResponder (GTResponderKey)

- (void)routerEventWithSelectorKey:(NSString *)selectorKey msgSource:(id)msgSource object:(id)object{
    NSArray *array = object ? @[object] : @[];
    [self routerEventWithSelectorKey:selectorKey msgSource:msgSource objects:array];
}

- (void)routerEventWithSelectorKey:(NSString *)selectorKey msgSource:(id)msgSource objects:(NSArray *)objects{
    [self.nextResponder routerEventWithSelectorKey:selectorKey msgSource:msgSource objects:objects];
}

@end
