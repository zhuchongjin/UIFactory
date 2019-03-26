//
//  CJTableView.h
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJTableView : UITableView
+ (CJTableView *)tableViewFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(UIColor *)backgroundColor separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle dataSource:(id<UITableViewDataSource>)dataSource delegate:(id<UITableViewDelegate>)delegate
@end
