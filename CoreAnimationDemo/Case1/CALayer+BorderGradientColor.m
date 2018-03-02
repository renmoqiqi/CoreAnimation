//
//  CALayer+BorderGradientColor.m
//  CoreAnimationDemo
//
//  Created by penghe on 2018/2/9.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "CALayer+BorderGradientColor.h"

@implementation CALayer (BorderGradientColor)

- (void )addGradienBorder:(NSArray *)colors borderWidth:(CGFloat)borderWidth
{
//    //先创建一个渐变色
//    CAGradientLayer *gradient = [CAGradientLayer layer];
//    gradient.frame = self.bounds;
//    gradient.startPoint = CGPointMake(0.0, 0.5);
//    gradient.endPoint = CGPointMake(1.0, 0.5);
//    gradient.colors = colors;
//
//    //创建一个遮罩
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.lineWidth = borderWidth;
//    shapeLayer.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
//    shapeLayer.fillColor = [UIColor blackColor].CGColor;
//    shapeLayer.strokeColor = [UIColor blackColor].CGColor;
//    gradient.mask = shapeLayer;
//
//    //添加
//    [self addSublayer:gradient];
    
    CAGradientLayer *gradientLayer =  [[CAGradientLayer alloc] init];
    gradientLayer.frame = self.bounds;
    gradientLayer.startPoint = CGPointMake(0.0, 0.5);
    gradientLayer.endPoint = CGPointMake(1.0, 0.5);
    gradientLayer.colors = colors;
    
    CAShapeLayer *shapeLayer =[[CAShapeLayer alloc] init];
    shapeLayer.lineWidth = borderWidth;
    shapeLayer.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    shapeLayer.fillColor = nil;
    shapeLayer.strokeColor = [UIColor blackColor].CGColor;
    
    gradientLayer.mask = shapeLayer;
    
    [self addSublayer:gradientLayer];
    
}

@end
