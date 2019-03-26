//
//  CJImageView.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJImageView.h"

@implementation CJImageView

+ (CJImageView *)imageViewWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor cornerRadius:(float)cornerRadius image:(UIImage *)image contentMode:(NSNumber *)contentMode{
    CJImageView *view = [[CJImageView alloc] initWithFrame:frame];
    
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
    
    if (image) {
        [view setImage:image];
    }
    
    if (contentMode) {
        view.contentMode = [contentMode integerValue];
    }
    
    return view;
}

@end
