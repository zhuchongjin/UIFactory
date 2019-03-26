//
//  CJTableView.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJTableView.h"

@implementation CJTableView

+ (CJTableView *)tableViewFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(UIColor *)backgroundColor separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle dataSource:(id<UITableViewDataSource>)dataSource delegate:(id<UITableViewDelegate>)delegate{
    CJTableView *view = [[CJTableView alloc] initWithFrame:frame style:style];
    
    if (backgroundColor) {
        view.backgroundColor = backgroundColor;
    }
    
    view.separatorStyle = separatorStyle;
    
    if (dataSource) {
        view.dataSource = dataSource;
    }
    
    if (delegate) {
        view.delegate = delegate;
    }
    
    return view;
}

@end
