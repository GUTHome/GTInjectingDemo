//
//  AfterViewController.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/23.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextCellProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AfterViewController : UITableViewController
<NextCellProtocol>

@property (nonatomic, strong) Animal *targetModel;

@end

NS_ASSUME_NONNULL_END
