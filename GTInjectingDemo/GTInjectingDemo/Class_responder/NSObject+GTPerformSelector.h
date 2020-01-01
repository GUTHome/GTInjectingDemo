//
//  NSObject+GTPerformSelector.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/21.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GTPerformSelector)

- (id)gt_performSelector:(SEL)selector objects:(NSArray<id> *)objects;

@end

