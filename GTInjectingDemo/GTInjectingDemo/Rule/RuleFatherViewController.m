//
//  RuleFatherViewController.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/26.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "RuleFatherViewController.h"

@interface RuleFatherViewController ()

@end

@implementation RuleFatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MMMTRule *rule = [[MMMTRule alloc] initWithTarget:self selector:@selector(testPrint) durationThreshold:2];
    rule.mode = MMMTPerformModeLast;
    BOOL ret = [rule apply];
    BOOL ret1 = [[MMMTEngine defaultEngine] applyRule:rule];
}

- (void)testPrint{
    NSLog(@"5");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self testPrint];
}

@end
