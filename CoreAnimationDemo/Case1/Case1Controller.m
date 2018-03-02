//
//  Case1Controller.m
//  CoreAnimationDemo
//
//  Created by penghe on 2018/2/8.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "Case1Controller.h"

#import "CALayer+BorderGradientColor.h"
#import "UserControl6.h"

@interface Case1Controller ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
//圆角大小 默认是0
@property (assign, nonatomic) NSInteger cornerValue;

@end

@implementation Case1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cornerValue = 0;
    [self setupViews];

}

- (void)setupViews
{
    [self test13];

}

//圆角属性cornerRadius只是影响了当前层的背景色或者border
- (void)test1
{
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
    self.testLabel.layer.cornerRadius = 15;
    self.testLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.testLabel.layer.borderWidth = 2;
}

//圆角属性cornerRadius不影响子图层
- (void)test2
{
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
    self.testLabel.layer.cornerRadius = 15;
    self.testLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.testLabel.layer.borderWidth = 2;
    
    CALayer *testLalyer = [CALayer layer];
    testLalyer.backgroundColor = [UIColor blackColor].CGColor;
    testLalyer.frame = self.testLabel.bounds;
    [self.testLabel.layer addSublayer:testLalyer];
    
    //设置Label的背景色不是当前层的所以圆角不起作用还是要设置当前层的背景色 主要是为了避免使用masksToBounds在列表视图中造成的性能问题
//    self.testLabel.backgroundColor = [UIColor redColor].CGColor;

}

//圆角属性cornerRadius不影响当前层的背景图片
- (void)test3
{
    self.testLabel.layer.cornerRadius = 15;
    self.testLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.testLabel.layer.borderWidth = 2;
    
    self.testLabel.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"weixin_logo"].CGImage);
}

//动态改变当前Label的圆角
- (IBAction)changeCornerRadius:(UISlider *)sender
{
    self.cornerValue = sender.value;
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
    self.testLabel.layer.cornerRadius = self.cornerValue;
    self.testLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.testLabel.layer.borderWidth = 2;

}

//设置某个为圆角
- (void)test4
{
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
 
    // maskedCorners is only available in iOS 11
    if (@available(iOS 11.0, *))
    {
        [self.testLabel setClipsToBounds: YES];
        [self.testLabel.layer setCornerRadius: 10];
        
        // Only if you want to round the left and right top corners
        [self.testLabel.layer setMaskedCorners: kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner];
    }
    //如果有边框设置圆角计算比较麻烦可以用下面的方法
    else
    {
        CAShapeLayer *cornersRound = [CAShapeLayer layer];
        [cornersRound setPath: [UIBezierPath bezierPathWithRoundedRect: self.testLabel.bounds byRoundingCorners: UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii: (CGSize){10.0, 10.}].CGPath];
        [self.testLabel.layer setMask:cornersRound];

    }


}

//CAShapeLayer结合贝塞尔曲线 设置圆角 牵扯到一些边框的问题
- (void)test5 {
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 100) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];

    CAShapeLayer * polygon = [CAShapeLayer layer];
    polygon.frame = CGRectMake(23.5, 28.04, 37.17, 37.46);
    polygon.path = path.CGPath;
    [self.view.layer addSublayer:polygon];
    
    polygon.fillColor   = [UIColor colorWithRed:0.937 green: 0.226 blue:0.48 alpha:1].CGColor;
    polygon.strokeColor = [UIColor colorWithRed:0.329 green: 0.329 blue:0.329 alpha:1].CGColor;
    polygon.lineWidth = 5;
    //lineJoin:线连接类型有三种类型
    polygon.lineJoin = kCALineJoinRound;
    //lineCap：线端点类型有三种情况
    polygon.lineCap = kCALineCapSquare;
//    //描述path路径从哪里开始
//    @property CGFloat strokeStart;
//    //描述path路径从哪里结束
//    @property CGFloat strokeEnd;
//    这两个值的范围是[0,1]，
}

//border 渐变
- (void)test6
{
    //不能用视图的背景色这样不会显示边框， masksToBounds和cornerRadius属性在一起会剪裁边框
//    self.testLabel.layer.cornerRadius = 5;
//    self.testLabel.layer.masksToBounds = YES;
//    self.testLabel.backgroundColor = [UIColor grayColor];

    //如果想设置圆角可以贝塞尔曲线设置圆角上面有例子
    self.testLabel.layer.backgroundColor = [UIColor grayColor].CGColor;
    [self.testLabel.layer addGradienBorder:@[(id)[UIColor redColor].CGColor, (id)[UIColor blueColor].CGColor] borderWidth:5];

}

//填充颜色线性渐变
- (void)test7
{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor yellowColor].CGColor, (__bridge id)[UIColor blueColor].CGColor];
    gradientLayer.locations = @[@0.3, @0.5, @1.0];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1.0, 0);
    gradientLayer.frame = CGRectMake(0, 100, 300, 100);
    [self.testLabel.layer addSublayer:gradientLayer];
    

}

//颜色径向渐变
- (void)test8
{
    //创建CGContextRef
    UIGraphicsBeginImageContext(self.view.bounds.size);
    CGContextRef gc = UIGraphicsGetCurrentContext();
    
    //创建CGMutablePathRef
    CGMutablePathRef path = CGPathCreateMutable();
    
    //绘制Path
    CGRect rect = CGRectMake(0, 100, 300, 200);
    CGPathMoveToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMinY(rect));
    CGPathAddLineToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    CGPathAddLineToPoint(path, NULL, CGRectGetWidth(rect), CGRectGetMaxY(rect));
    CGPathAddLineToPoint(path, NULL, CGRectGetWidth(rect), CGRectGetMinY(rect));
    CGPathCloseSubpath(path);

    //绘制渐变
    [self drawRadialGradient:gc path:path startColor:[UIColor greenColor].CGColor endColor:[UIColor redColor].CGColor];
    
    //注意释放CGMutablePathRef
    CGPathRelease(path);
    
    //从Context中获取图像，并显示在界面上
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imgView];

}
//绘制线性渐变
- (void)drawRadialGradient:(CGContextRef)context
                      path:(CGPathRef)path
                startColor:(CGColorRef)startColor
                  endColor:(CGColorRef)endColor
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGFloat locations[] = { 0.0, 1.0 };
    
    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    
    CGRect pathRect = CGPathGetBoundingBox(path);
    CGPoint center = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMidY(pathRect));
    CGFloat radius = MAX(pathRect.size.width / 2.0, pathRect.size.height / 2.0) * sqrt(2);
    
    CGContextSaveGState(context);
    CGContextAddPath(context, path);
    CGContextEOClip(context);
    
    CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, 0);
    
    CGContextRestoreGState(context);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
}

//填充色环形渐变
- (void)test9
{
    UserControl6 *uc6 = [[UserControl6 alloc] initWithFrame:CGRectMake(-10, 225, 135, 135)];
    [self.view addSubview:uc6];
}

//阴影
- (void)test10
{
    //设置layer 的背景色
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
    //透明度
    self.testLabel.layer.shadowOpacity = 0.3;
    //类似sketch的 X，Y偏移
    self.testLabel.layer.shadowOffset  = CGSizeMake(1, 6);
    //模糊度
    self.testLabel.layer.shadowRadius  = 6;

}

//一个综合的例子 圆角 悬浮 阴影
- (void)test11
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    //用贝塞尔曲线画一个圆角矩形
    UIBezierPath * roundedRectPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 58, 47) cornerRadius:10];
    //当做CAShapeLayer的路径
    CAShapeLayer * roundedRect = [CAShapeLayer layer];
    roundedRect.frame                      = CGRectMake(26.5, 29.5, 57.93, 46.74);
    roundedRect.fillColor                  = nil;
    //border颜色
    roundedRect.strokeColor                = [UIColor colorWithRed:0.937 green: 0.216 blue:0.18 alpha:1].CGColor;
    roundedRect.lineWidth                  = 5;
    //阴影
    roundedRect.shadowColor                = [UIColor colorWithRed:0 green: 0 blue:0 alpha:0.596].CGColor;
    roundedRect.shadowOpacity = 0.6;
    roundedRect.shadowOffset  = CGSizeMake(4, 4);
    roundedRect.shadowRadius  = 5;
    roundedRect.path                       = roundedRectPath.CGPath;
    //渐变
    CAGradientLayer * roundedRectGradient = [CAGradientLayer layer];
    //用上层圆角矩形作为蒙版
    CAShapeLayer * roundedRectMask         = [CAShapeLayer layer];
    roundedRectMask.path                   = roundedRect.path;
    roundedRectGradient.mask               = roundedRectMask;
    roundedRectGradient.frame              = roundedRect.bounds;
    roundedRectGradient.colors             = @[(id)[UIColor colorWithRed:0.608 green: 0.937 blue:0.451 alpha:1].CGColor, (id)[UIColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor];
    roundedRectGradient.startPoint         = CGPointMake(0.054, 0.094);
    roundedRectGradient.endPoint           = CGPointMake(0.963, 0.969);
    //注意层级关系
    [roundedRect addSublayer:roundedRectGradient];
    [self.view.layer addSublayer:roundedRect];
}

//strokeStart strokeEnd简介
- (void)test12
{
    UIBezierPath *rectanglePath = [UIBezierPath bezierPath];
    
    //strokeStart strokeEnd 开始的位置和贝塞尔曲线moveToPoint 开始的点的位置有关 逆时针方向
    [rectanglePath moveToPoint:CGPointMake(0, 177)];
    [rectanglePath addLineToPoint:CGPointMake(185, 177)];
    [rectanglePath addLineToPoint:CGPointMake(185, 0)];
    [rectanglePath addLineToPoint:CGPointMake(0, 0)];
    [rectanglePath addLineToPoint:CGPointMake(0, 177)];
    [rectanglePath closePath];
    
//    [rectanglePath moveToPoint:CGPointMake(185, 177)];
//    [rectanglePath addLineToPoint:CGPointMake(185, 0)];
//    [rectanglePath addLineToPoint:CGPointMake(0, 0)];
//    [rectanglePath addLineToPoint:CGPointMake(0, 177)];
//    [rectanglePath addLineToPoint:CGPointMake(185, 177)];
//    [rectanglePath closePath];

    CAShapeLayer * rectangle = [CAShapeLayer layer];
    rectangle.frame       = CGRectMake(83, 206, 185, 177);
    rectangle.fillColor   = [UIColor colorWithRed:0.937 green: 0.431 blue:0.268 alpha:1].CGColor;
    rectangle.strokeColor = [UIColor colorWithRed:0.129 green: 0.151 blue:0.404 alpha:1].CGColor;
    rectangle.lineWidth   = 8;
    rectangle.strokeStart = 0.4;
    rectangle.strokeEnd   = 1;
    rectangle.path        = rectanglePath.CGPath;
    [self.view.layer addSublayer:rectangle];
}

//用动画解释下strokeStart strokeEnd属性作用的过程
- (void)test13
{
    //这里只要你画出一个图形就可以动画慢慢生成你想用的图形 比如一个艺术字 一个苹果的logo
    UIBezierPath *rectanglePath = [UIBezierPath bezierPath];
    
    //strokeStart strokeEnd 开始的位置和贝塞尔曲线moveToPoint 开始的点的位置有关 逆时针方向
    //    [rectanglePath moveToPoint:CGPointMake(0, 177)];
    //    [rectanglePath addLineToPoint:CGPointMake(185, 177)];
    //    [rectanglePath addLineToPoint:CGPointMake(185, 0)];
    //    [rectanglePath addLineToPoint:CGPointMake(0, 0)];
    //    [rectanglePath addLineToPoint:CGPointMake(0, 177)];
    //    [rectanglePath closePath];
    
    [rectanglePath moveToPoint:CGPointMake(185, 177)];
    [rectanglePath addLineToPoint:CGPointMake(185, 0)];
    [rectanglePath addLineToPoint:CGPointMake(0, 0)];
    [rectanglePath addLineToPoint:CGPointMake(0, 177)];
    [rectanglePath addLineToPoint:CGPointMake(185, 177)];
    [rectanglePath closePath];
    
    CAShapeLayer * rectangle = [CAShapeLayer layer];
    rectangle.frame       = CGRectMake(83, 206, 185, 177);
    rectangle.fillColor   = [UIColor colorWithRed:0.937 green: 0.431 blue:0.268 alpha:1].CGColor;
    rectangle.strokeColor = [UIColor colorWithRed:0.129 green: 0.151 blue:0.404 alpha:1].CGColor;
    rectangle.lineWidth   = 8;
    rectangle.strokeStart = 0;
    rectangle.strokeEnd   = 1;
    rectangle.path        = rectanglePath.CGPath;
    [self.view.layer addSublayer:rectangle];
    
    //做动画
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    animation.fromValue = [NSNumber numberWithFloat:0];
    animation.toValue = [NSNumber numberWithFloat:1];
    animation.duration = 1.5;
    
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = false;
    
    [rectangle addAnimation:animation forKey:@"drawLineAnimation"];
}
@end
