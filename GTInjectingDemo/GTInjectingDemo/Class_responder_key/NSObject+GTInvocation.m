//
//  NSObject+GTInvocation.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "NSObject+GTInvocation.h"

@implementation NSObject (GTInvocation)

- (NSInvocation *)createInvocationWithSelector:(SEL)aSelector{
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:aSelector];
    
    if (!signature) {
        NSString *info = [NSString stringWithFormat:@"-[%@ %@]:unrecognized selector sent to instance", [self class], NSStringFromSelector(aSelector)];
        @throw [[NSException alloc] initWithName:@"remind:" reason:info userInfo:nil];
        return nil;
    }
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self; //注意target是谁，谁就负责响应事件
    invocation.selector = aSelector;
    
    return  invocation;
}

@end
