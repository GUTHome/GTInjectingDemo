//
//  PersonProtocol.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/18.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "BLMethodInjecting.h"

@class Cat;
@protocol PersonProtocol <NSObject>

@property (nonatomic, strong) Cat *cat;

@bl_concrete
- (void)call_catSay;

@bl_concrete
+ (void)speak;

@end

