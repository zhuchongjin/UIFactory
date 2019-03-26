//
//  CJTextField.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJTextField.h"

@implementation CJTextField

+ (CJTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor cornerRadius:(float)cornerRadius font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment text:(NSString *)text delegate:(id<UITextFieldDelegate>)delegate{
    CJTextField *view = [[CJTextField alloc] initWithFrame:frame];
    
    if (placeholder) {
        view.placeholder = placeholder;
    }
    
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
    
    if (text) {
        view.text = text;
    }
    
    if (delegate) {
        view.delegate = delegate;
    }
    
    view.textAlignment = textAlignment;
    
    return view;
}

@end
