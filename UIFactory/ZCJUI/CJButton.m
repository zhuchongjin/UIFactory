//
//  CJButton.m
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import "CJButton.h"

@implementation CJButton

+ (CJButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor titleFont:(UIFont *)titleFont cornerRadius:(float)cornerRadius Target:(id)target action:(SEL)action{
    CJButton *view = [CJButton buttonWithType:UIButtonTypeCustom];
    
    view.frame = frame;
    
    if (title) {
        [view setTitle:title forState:UIControlStateNormal];
    }
    
    if (titleColor) {
        [view setTitleColor:titleColor forState:UIControlStateNormal];
    }

    
    if (backgroundColor) {
        view.backgroundColor = backgroundColor;
    }
    
    if (titleFont) {
        view.titleLabel.font = titleFont;
    }
    
    if (cornerRadius > 0) {
        view.layer.cornerRadius = cornerRadius;
        view.layer.masksToBounds = YES;
    }
    
    if (target && action) {
        [view addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    return view;
}

- (void)setCJButtonBorderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth{
    self.layer.masksToBounds = YES;
    if (borderColor) {
        [self.layer setBorderColor:borderColor.CGColor];

    }

    if (borderWidth) {
        self.layer.borderWidth = 2;
    }
    
}


- (void)setCJButtonImageName:(NSString *)imgName{
    [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat space = self.spaceBetweenTitleAndImage;
    
    
    CGFloat titleW = CGRectGetWidth(self.titleLabel.bounds);//titleLabel的宽度
    CGFloat titleH = CGRectGetHeight(self.titleLabel.bounds);//titleLabel的高度
    
    CGFloat imageW = CGRectGetWidth(self.imageView.bounds);//imageView的宽度
    CGFloat imageH = CGRectGetHeight(self.imageView.bounds);//imageView的高度
    
    CGFloat btnCenterX = CGRectGetWidth(self.bounds)/2;//按钮中心点X的坐标（以按钮左上角为原点的坐标系）
    CGFloat imageCenterX = btnCenterX - titleW/2;//imageView中心点X的坐标（以按钮左上角为原点的坐标系）
    CGFloat titleCenterX = btnCenterX + imageW/2;//titleLabel中心点X的坐标（以按钮左上角为原点的坐标系）
    
    
    switch (self.imageAlignment)
    {
        case CJImageAlignmentTop:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(imageH/2+ space/2, -(titleCenterX-btnCenterX), -(imageH/2 + space/2), titleCenterX-btnCenterX);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleH/2 + space/2), btnCenterX-imageCenterX, titleH/2+ space/2, -(btnCenterX-imageCenterX));
        }
            break;
        case CJImageAlignmentLeft:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space/2, 0,  -space/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space/2, 0, space);
        }
            break;
        case CJImageAlignmentBottom:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageH/2+ space/2), -(titleCenterX-btnCenterX), imageH/2 + space/2, titleCenterX-btnCenterX);
            self.imageEdgeInsets = UIEdgeInsetsMake(titleH/2 + space/2, btnCenterX-imageCenterX,-(titleH/2+ space/2), -(btnCenterX-imageCenterX));
        }
            break;
        case CJImageAlignmentRight:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageW + space/2), 0, imageW + space/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleW+space/2, 0, -(titleW+space/2));
        }
            break;
        default:
            break;
    }
}

@end
