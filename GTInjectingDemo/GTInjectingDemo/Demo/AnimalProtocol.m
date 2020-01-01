//
//  AnimalProtocol.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "AnimalProtocol.h"

@bl_concreteprotocol(AnimalProtocol)

+ (void)sayWhoYouAre{
    NSLog(@"%@ +sayWhoYouAre", [NSString stringWithFormat:@"%@ saying..", NSStringFromClass(self.class)]);
}

- (void)sayWhoYouAre:(id)objc{
    NSLog(@"%@ -sayWhoYouAre  %p", [NSString stringWithFormat:@"%@ saying..", NSStringFromClass(self.class)], objc);
}

@end
