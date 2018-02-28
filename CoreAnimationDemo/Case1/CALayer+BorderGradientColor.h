//
//  CALayer+BorderGradientColor.h
//  CoreAnimationDemo
//
//  Created by penghe on 2018/2/9.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CALayer (BorderGradientColor)

- (void )addGradienBorder:(NSArray *)colors borderWidth:(CGFloat)borderWidth;


@end
