//
//  UIResponder+GTResponderKey.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (GTResponderKey)

#pragma mark -

/**
 *  (Casa的思想框架实践)
 *  走KEY转响应,最终在控制器里要实现的是【routerEventWithSelectorKey:msgSource:objects】由此方法分发事件统一管理
 *  KEY非方法名字
 */
// 转发单参数
- (void)routerEventWithSelectorKey:(NSString *)selectorKey msgSource:(id)msgSource object:(id)object;

// 转发多参数
- (void)routerEventWithSelectorKey:(NSString *)selectorKey msgSource:(id)msgSource objects:(NSArray *)objects;

@end

