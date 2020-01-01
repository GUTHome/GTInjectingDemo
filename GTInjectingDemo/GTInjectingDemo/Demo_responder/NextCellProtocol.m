//
//  NextCellProtocol.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/21.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "NextCellProtocol.h"

@bl_concreteprotocol(NextCellProtocol)

- (void)routerTargetSource:(id)view testProtocol:(id)objc{
    NSLog(@"%@", view);
    NSLog(@"%@", objc);
    
    NSLog(@"打印属性 %@", self.targetModel);
}

@end
