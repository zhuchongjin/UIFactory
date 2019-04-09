//
//  CJButton.h
//  UIFactory
//
//  Created by mac on 2019/3/26.
//  Copyright © 2019年 zhuchongjin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  按钮中图片的位置
 */
typedef NS_ENUM(NSUInteger, CJImageAlignment) {
    /**
     *  图片在左，默认
     */
    CJImageAlignmentLeft = 0,
    /**
     *  图片在上
     */
    CJImageAlignmentTop,
    /**
     *  图片在下
     */
    CJImageAlignmentBottom,
    /**
     *  图片在右
     */
    CJImageAlignmentRight,
};

@interface CJButton : UIButton

/**
 带点击事件

 @param frame <#frame description#>
 @param title <#title description#>
 @param titleColor <#titleColor description#>
 @param backgroundColor <#backgroundColor description#>
 @param titleFont <#titleFont description#>
 @param cornerRadius <#cornerRadius description#>
 @param target <#target description#>
 @param action <#action description#>
 @return <#return value description#>
 */
+ (CJButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor titleFont:(UIFont *)titleFont cornerRadius:(float)cornerRadius Target:(id)target action:(SEL)action;




/**
 按钮带边线

 @param borderColor <#borderColor description#>
 @param borderWidth <#borderWidth description#>
 */
- (void)setCJButtonBorderColor:(UIColor *)borderColor borderWidth:(CGFloat )borderWidth;


/**
 UIButton 设置图片

 @param imgName <#imgName description#>
 */
- (void)setCJButtonImageName:(NSString *)imgName;

/**
 *  按钮中图片的位置
 */
@property(nonatomic,assign)CJImageAlignment imageAlignment;
/**
 *  按钮中图片与文字的间距
 */
@property(nonatomic,assign)CGFloat spaceBetweenTitleAndImage;

@end
