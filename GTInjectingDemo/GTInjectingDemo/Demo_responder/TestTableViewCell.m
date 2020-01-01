//
//  TestTableViewCell.m
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/19.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import "TestTableViewCell.h"
#import "UIResponder+GTResponder.h"
#import "UIResponder+GTResponderKey.h"
#import "NextCellProtocol.h"
#import "AfterViewControllerActionHeader.h"

@interface TestTableViewCell ()

@end

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    [self.actionButton1 addTarget:self action:@selector(actionButton1Click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.actionButton2 addTarget:self action:@selector(actionButton2Click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.actionButton3 addTarget:self action:@selector(actionButton3Click) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void)actionButton1Click{
    if (self.isKey) {
        
    } else {
        [self routerEventWithSelectorName:@"routerTargetSource:object1:" msgSource:nil object:@"哈哈"];
    }
}

- (void)actionButton2Click{
    if (self.isKey) {
        [self routerEventWithSelectorKey:kAfterViewControllerAction_button2_action msgSource:self objects:@[@"哈哈",@"呵呵"]];
    } else {
        [self routerEventWithSelectorName:@"routerTargetSource:object1:object2:" msgSource:self objects:@[@"哈哈",@"呵呵"]];
    }
}

- (void)actionButton3Click{
    if (self.isKey) {
        [self routerEventWithSelectorKey:kAfterViewControllerAction_button3_action msgSource:self object:@"走runtime协议"];
    } else {
        [self routerEventWithSelectorName:@"routerTargetSource:testProtocol:" msgSource:self object:@"走runtime协议"];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
