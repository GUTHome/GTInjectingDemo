//
//  Person.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/18.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "PersonProtocol.h"

@interface Person : NSObject
<PersonProtocol>

@property (nonatomic, strong) Cat *cat;

@end

