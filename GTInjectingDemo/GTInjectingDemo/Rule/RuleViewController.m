//
//  RuleViewController.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/26.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "RuleViewController.h"

@interface RuleViewController ()

@property (nonatomic, strong) MMMTRule *rule;

@end

@implementation RuleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    MMMTRule *rule = [[MMMTRule alloc] initWithTarget:self selector:@selector(testPrint) durationThreshold:2];
    rule.mode = MMMTPerformModeLast;
    BOOL ret = [rule apply];
    BOOL ret1 = [[MMMTEngine defaultEngine] applyRule:rule];

}

- (void)testPrint{
    NSLog(@"2");
}

+ (void)testClass{
    NSLog(@"3");
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self testPrint];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"1");
//    });
//}

@end
