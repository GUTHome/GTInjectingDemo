//
//  NextViewController.h
//  GTInjectingDemo
//
//  Created by tanxl on 2019/12/17.
//  Copyright © 2019 tanxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextCellProtocol.h"

@interface NextViewController : UITableViewController
<NextCellProtocol>

@property (nonatomic, strong) Animal *targetModel;

@end

