//
//  AnimalProtocol.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "BLMethodInjecting.h"

@protocol AnimalProtocol <NSObject>

@bl_concrete
+ (void)sayWhoYouAre;

@bl_concrete
- (void)sayWhoYouAre:(id)objc;

@end
