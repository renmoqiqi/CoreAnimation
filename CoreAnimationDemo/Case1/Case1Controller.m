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
    self.title = @"圆角";

    [self testNine];

}

//圆角属性cornerRadius只是影响了当前层的背景色或者border
- (void)testOne
{
    self.testLabel.layer.backgroundColor = [UIColor redColor].CGColor;
    self.testLabel.layer.cornerRadius = 15;
    self.testLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.testLabel.layer.borderWidth = 2;
}

//圆角属性cornerRadius不影响子图层
- (void)testTow
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
- (void)testThree
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
- (void)testFour
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

//CAShapeLayer结合贝塞尔曲线 设置圆角
- (void)testFive {
    
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

}

//border 渐变
- (void)testSix
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
- (void)testSeven
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
- (void)testEnght
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
- (void)testNine
{
    UserControl6 *uc6 = [[UserControl6 alloc] initWithFrame:CGRectMake(-10, 225, 135, 135)];
    [self.view addSubview:uc6];
}


@end
