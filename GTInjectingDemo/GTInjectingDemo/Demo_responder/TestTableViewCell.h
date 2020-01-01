//
//  TestTableViewCell.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/19.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTableViewCell : UITableViewCell

@property (nonatomic, assign) BOOL isKey;

@property (weak, nonatomic) IBOutlet UIButton *actionButton1;

@property (weak, nonatomic) IBOutlet UIButton *actionButton2;

@property (weak, nonatomic) IBOutlet UIButton *actionButton3;

@end

NS_ASSUME_NONNULL_END
