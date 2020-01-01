//
//  NextCellProtocol.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/21.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "BLMethodInjecting.h"
#import "Animal.h"

@protocol NextCellProtocol <NSObject>

@bl_concrete

@property (nonatomic, strong) Animal *targetModel;

- (void)routerTargetSource:(id)view testProtocol:(id)objc;

@end

