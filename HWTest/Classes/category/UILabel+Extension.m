//
//  UILabel+Extension.m
//  LifeLine
//
//  Created by 郑佳 on 16/4/11.
//  Copyright © 2016年 Triangle. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

- (void)textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize{
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = textColor;
    
}

- (void)textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment fontSize:(CGFloat)fontSize{
    [self textColor:textColor fontSize:fontSize];
    self.textAlignment = textAlignment;
}

- (void)text:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize{
    [self textColor:textColor fontSize:fontSize];
    self.text = text;
}

- (void)text:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize fontName:(NSString *)fontName{
    [self text:text textColor:textColor fontSize:fontSize];
    self.font = [UIFont fontWithName:fontName size:fontSize];
}

- (UILabel *(^)(NSString*))sText{
    return ^(NSString *s_text){
        self.text = s_text;
        return self;
    };
}
- (UILabel *(^)(UIFont*))sFont{
    return ^(UIFont *s_font){
        self.font = s_font;
        return self;
    };
}
- (UILabel *(^)(UIColor *))sTextColor{
    return ^(UIColor *s_textColor){
        self.textColor = s_textColor;
        return self;
    };
}
- (UILabel *(^)(UIColor *))sBgColor{
    return ^(UIColor *s_bgColor){
        self.backgroundColor = s_bgColor;
        return self;
    };
}
- (UILabel *(^)(NSTextAlignment ))sTextAlignment{
    return ^(NSTextAlignment s_textAlignment){
        self.textAlignment = s_textAlignment;
        return self;
    };
}
@end
