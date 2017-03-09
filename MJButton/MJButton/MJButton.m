//
//  MJButton.m
//  MJButton
//
//  Created by 马家俊 on 17/3/8.
//  Copyright © 2017年 MJJ. All rights reserved.
//

#import "MJButton.h"

@implementation MJButton

+(MJButton*)createMJButton:(CGRect)frame title:(NSString*)title fontSize:(NSInteger)fontSize Image:(NSString*)imageName Type:(MJButtonType)buttonType handler:(tagpHandler)handler
{
    MJButton* btn = [super buttonWithType:UIButtonTypeCustom];
    btn.adjustsImageWhenHighlighted = NO;
    btn.frame = frame;
    btn.buttonTypeValue = buttonType;
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    if (imageName) {
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    btn.handler = handler;
    [btn addTarget:btn action:@selector(btnTap:) forControlEvents:UIControlEventTouchUpInside];
    return btn;
    
}

/**
 修改image的位置

 @param contentRect 当前button的Bounds
 @return title的frame
 */
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleY;
    CGFloat titleW;
    CGFloat titleH;
    switch (_buttonTypeValue) {
        case MJButtonTypeValue1:
            titleW = CGRectGetWidth(contentRect);
            titleH = CGRectGetHeight(contentRect);
            return CGRectMake(0, 0, titleW, titleH);
            break;
        case MJButtonTypeValue2:
            titleY = contentRect.size.height *0.8;
            titleW = contentRect.size.width;
            titleH = contentRect.size.height - titleY;
            return CGRectMake(0, titleY, titleW, titleH);
            break;
        default:
            break;
    }
}


/**
 修改title的位置

 @param contentRect 当前button的Bounds
 @return image的frame
 */
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW;
    CGFloat imageH;
    
    switch (_buttonTypeValue) {
        case MJButtonTypeValue1:
            return CGRectMake(0, 0, 0, 0);
            break;
        case MJButtonTypeValue2:
            imageW = CGRectGetWidth(contentRect);
            imageH = contentRect.size.height * 0.8;
            return CGRectMake(0, 0, imageW, imageH);
            break;
        default:
            break;
    }
}

-(void)btnTap:(UIButton*)sender
{
    if (self.handler) {
        self.handler(sender);
    }
}
@end
