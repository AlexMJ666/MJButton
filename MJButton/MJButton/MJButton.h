//
//  MJButton.h
//  MJButton
//
//  Created by 马家俊 on 17/3/8.
//  Copyright © 2017年 MJJ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^tagpHandler) (UIButton* sender);
typedef NS_ENUM(NSUInteger,MJButtonType) {
    MJButtonTypeValue1,             /*！@brief 无图片Button*/
    MJButtonTypeValue2,             /*！@brief Label在Image正下方Button*/
};

@interface MJButton : UIButton
@property (nonatomic, assign) MJButtonType buttonTypeValue;
@property (nonatomic, strong)tagpHandler handler;


/**
 创建button

 @param frame 尺寸
 @param title 标题
 @param fontSize 文字大小
 @param imageName 图片名/无图片则为nil
 @param handler handler description
 @param buttonType buttonType description
 @return return value description
 */
+(MJButton*)createMJButton:(CGRect)frame title:(NSString*)title fontSize:(NSInteger)fontSize Image:(NSString*)imageName Type:(MJButtonType)buttonType handler:(tagpHandler)handler;
@end
