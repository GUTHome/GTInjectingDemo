//
//  UIResponder+GTResponder.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/21.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (GTResponder)

#pragma mark - 走响应,最终在控制器里要实现的是【selector】
// 转发单参数
- (void)routerEventWithSelectorName:(NSString *)selector msgSource:(id)msgSource object:(id)object;
// 转发多参数
- (void)routerEventWithSelectorName:(NSString *)selector msgSource:(id)msgSource objects:(NSArray *)objects;

@end


