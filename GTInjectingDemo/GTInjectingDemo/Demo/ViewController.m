//
//  ViewController.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "AfterViewController.h"
#import "RuleFatherViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"InjectingDemo";
    
    Person *person = [Person new];
    
    Cat *cat = [Cat new];
    cat.num = 1;
    
    person.cat = cat;
    
    [person call_catSay];
    
    [Person speak];
    
    UIButton *button1 = [UIButton new];
    button1.backgroundColor = UIColor.orangeColor;
    [button1 setTitle:@"NextViewController" forState:(UIControlStateNormal)];
    button1.frame = CGRectMake(50, 200, 200, 50);
    [button1 addTarget:self action:@selector(button1) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button1];
    
    button1 = [UIButton new];
    [button1 setTitle:@"AfterViewController" forState:(UIControlStateNormal)];
    [button1 addTarget:self action:@selector(button2) forControlEvents:(UIControlEventTouchUpInside)];
    button1.backgroundColor = UIColor.orangeColor;
    button1.frame = CGRectMake(50, 300, 200, 50);
    [self.view addSubview:button1];
    
    button1 = [UIButton new];
    [button1 setTitle:@"RuleViewController" forState:(UIControlStateNormal)];
    [button1 addTarget:self action:@selector(button3) forControlEvents:(UIControlEventTouchUpInside)];
    button1.backgroundColor = UIColor.orangeColor;
    button1.frame = CGRectMake(50, 400, 200, 50);
    [self.view addSubview:button1];
}

- (void)button1{
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}

- (void)button2{
    [self.navigationController pushViewController:[AfterViewController new] animated:YES];
}

- (void)button3{
    [self.navigationController pushViewController:[RuleFatherViewController new] animated:YES];
}

@end
