//
//  CJUILabel.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJLabel.h"

@implementation CJLabel

+ (CJLabel *)labelWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor cornerRadius:(float)cornerRadius font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment text:(NSString *)text{
    CJLabel *view = [[CJLabel alloc] initWithFrame:frame];
    
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
    
    if (font) {
        view.font = font;
    }
    
    if (textColor) {
        view.textColor = textColor;
    }
    
    view.textAlignment = textAlignment;
    
    if (text) {
        view.text = text;
    }
    
    return view;
}
@end
