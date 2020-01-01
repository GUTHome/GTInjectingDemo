//
//  NextViewController.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "NextViewController.h"
#import "TestTableViewCell.h"


@interface NextViewController ()

@end

@implementation NextViewController
@synthesize targetModel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = @"Class_responder";
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle:nil] forCellReuseIdentifier:@"TestTableViewCell"];
    [self.tableView reloadData];
    
    Animal *model = [Animal new];
    self.targetModel = model;
    
}

#pragma mark - type1
// button1
- (void)routerTargetSource:(id)view object1:(id)object1{
    NSLog(@"%@", view);
    NSLog(@"%@", object1);
}

// button2
- (void)routerTargetSource:(id)view object1:(id)object1 object2:(id)object2{
    NSLog(@"%@", view);
    NSLog(@"%@", object1);
    NSLog(@"%@", object2);
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestTableViewCell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

@end
