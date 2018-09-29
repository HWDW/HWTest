//
//  UILabel+Extension.h
//  LifeLine
//
//  Created by 郑佳 on 16/4/11.
//  Copyright © 2016年 Triangle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extension)

- (void)textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;
- (void)textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment fontSize:(CGFloat)fontSize;
- (void)text:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;
- (void)text:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize fontName:(NSString *)fontName;
@property (nonatomic ,copy)UILabel *(^sText)(NSString * s_text);
@property (nonatomic ,copy)UILabel *(^sFont)(UIFont * s_font);
@property (nonatomic ,copy)UILabel *(^sTextColor)(UIColor * s_textColor);
@property (nonatomic ,copy)UILabel *(^sBgColor)(UIColor * s_bgColor);
@property (nonatomic ,copy)UILabel *(^sTextAlignment)(NSTextAlignment  s_textAlignment);

@end
