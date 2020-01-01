//
//  NSObject+GTInvocation.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GTInvocation)

- (NSInvocation *)createInvocationWithSelector:(SEL)aSelector;

@end

