//
//  CJView.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJView.h"

@implementation CJView

+ (CJView *)viewWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor cornerRadius:(float)cornerRadius{
    CJView *view = [[CJView alloc] initWithFrame:frame];
    
    if (backgroundColor) {
        view.backgroundColor = backgroundColor;
    }
    
    if (borderColor) {
        view.layer.borderColor = (__bridge CGColorRef _Nullable)(borderColor);
        
    }
    
    if (cornerRadius > 0) {
        view.layer.cornerRadius = cornerRadius;
        view.layer.masksToBounds = YES;
    }
    
    return view;
}

@end
