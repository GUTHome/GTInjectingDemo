//
//  PersonProtocol.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/18.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "PersonProtocol.h"
#import "Cat.h"

@bl_concreteprotocol(PersonProtocol)

@synthesize cat = cat;

- (void)call_catSay{
    
    [self.cat sayWhoYouAre:self.cat];
}

+ (void)speak{
    NSLog(@"Person..");
}

@end
