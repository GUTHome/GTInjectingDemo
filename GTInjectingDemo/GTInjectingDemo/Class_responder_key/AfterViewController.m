//
//  AfterViewController.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "AfterViewController.h"
#import "TestTableViewCell.h"
#import "UIViewController+GTResponderContainer.h"
#import "AfterViewControllerActionHeader.h"

@interface AfterViewController ()

@end

@implementation AfterViewController
@synthesize targetModel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = @"Class_responder_key";
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle:nil] forCellReuseIdentifier:@"TestTableViewCell"];
    [self.tableView reloadData];
    
    Animal *model = [Animal new];
    self.targetModel = model;
    
    // 视图-控制器-事件关系
    GTResponderEventProxy *reponderEventProxy = self.reponderEventProxy;
    [reponderEventProxy addValue:[self createInvocationWithSelector:@selector(testCellButton3Click:objc:)] forKey:kAfterViewControllerAction_button3_action];
    [reponderEventProxy addValue:[self createInvocationWithSelector:@selector(testCellButton2Click:objc1:objc2:)] forKey:kAfterViewControllerAction_button2_action];
    // 未实现或方法被修改则会报警告
    [reponderEventProxy addValue:[self createInvocationWithSelector:@selector(testCellButton2Click:)] forKey:kAfterViewControllerAction_button1_action];
}

#pragma mark - type2

- (void)routerEventWithSelectorKey:(NSString *)selectorKey msgSource:(id)msgSource objects:(NSArray *)objects{
    NSLog(@"--> %@",selectorKey);
    [self.reponderEventProxy handleForKey:selectorKey msgSource:msgSource objects:objects];
}

- (void)testCellButton3Click:(UIView *)targetView objc:(id)objc{
    
}

- (void)testCellButton2Click:(UIView *)targetView objc1:(id)objc1  objc2:(id)objc2{

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
    cell.isKey = YES;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}


@end
