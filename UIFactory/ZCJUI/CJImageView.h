//
//  CJImageView.h
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJImageView : UIImageView
+ (CJImageView *)imageViewWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor cornerRadius:(float)cornerRadius image:(UIImage *)image contentMode:(NSNumber *)contentMode;
@end
