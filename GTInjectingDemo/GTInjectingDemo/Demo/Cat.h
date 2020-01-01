//
//  Cat.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalProtocol.h"

@interface Cat : NSObject
<AnimalProtocol>

@property (nonatomic, assign) NSInteger num;

@end

