//
//  CustomView.m
//
//  Code generated using QuartzCode 1.54.0 on 2018/2/28.
//  www.quartzcodeapp.com
//

#import "CustomView.h"
#import "QCMethod.h"

@interface CustomView ()

@property (nonatomic, strong) NSMutableDictionary * layers;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;


@end

@implementation CustomView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}



- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	
}

- (void)setupLayers{
	CALayer * Map = [CALayer layer];
	Map.frame = CGRectMake(-0, 23.69, 300, 402.62);
	
	[self.layer addSublayer:Map];
	self.layers[@"Map"] = Map;
	{
		CALayer * AbstractWorldMap = [CALayer layer];
		AbstractWorldMap.frame = CGRectMake(0, 0, 100, 52.62);
		
		[Map addSublayer:AbstractWorldMap];
		self.layers[@"AbstractWorldMap"] = AbstractWorldMap;
		{
			CALayer * Map = [CALayer layer];
			Map.frame = CGRectMake(0, 0, 100, 52.62);
			
			[AbstractWorldMap addSublayer:Map];
			self.layers[@"Map"] = Map;
			{
				CAShapeLayer * Path = [CAShapeLayer layer];
				Path.frame       = CGRectMake(42.12, 21.21, 19.34, 23.19);
				Path.fillColor   = [UIColor colorWithRed:0.961 green: 0.651 blue:0.137 alpha:1].CGColor;
				Path.strokeColor = [UIColor blackColor].CGColor;
				Path.lineWidth   = 0;
				Path.path        = [self PathPath].CGPath;
				[Map addSublayer:Path];
				self.layers[@"Path"] = Path;
				CAShapeLayer * Path2 = [CAShapeLayer layer];
				Path2.frame       = CGRectMake(59.6, 36.98, 1.85, 4.77);
				Path2.fillColor   = [UIColor colorWithRed:0.961 green: 0.651 blue:0.137 alpha:1].CGColor;
				Path2.strokeColor = [UIColor blackColor].CGColor;
				Path2.lineWidth   = 0;
				Path2.path        = [self Path2Path].CGPath;
				[Map addSublayer:Path2];
				self.layers[@"Path2"] = Path2;
				CAShapeLayer * Path3 = [CAShapeLayer layer];
				Path3.frame       = CGRectMake(50.07, 2.65, 3.71, 1.72);
				Path3.fillColor   = [UIColor colorWithRed:0.29 green: 0.565 blue:0.886 alpha:1].CGColor;
				Path3.strokeColor = [UIColor blackColor].CGColor;
				Path3.lineWidth   = 0;
				Path3.path        = [self Path3Path].CGPath;
				[Map addSublayer:Path3];
				self.layers[@"Path3"] = Path3;
				CAShapeLayer * Path4 = [CAShapeLayer layer];
				Path4.frame       = CGRectMake(62.25, 4.64, 4.24, 2.65);
				Path4.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path4.strokeColor = [UIColor blackColor].CGColor;
				Path4.lineWidth   = 0;
				Path4.path        = [self Path4Path].CGPath;
				[Map addSublayer:Path4];
				self.layers[@"Path4"] = Path4;
				CAShapeLayer * Path5 = [CAShapeLayer layer];
				Path5.frame       = CGRectMake(40.26, 9.68, 3.31, 1.72);
				Path5.fillColor   = [UIColor colorWithRed:0.29 green: 0.565 blue:0.886 alpha:1].CGColor;
				Path5.strokeColor = [UIColor blackColor].CGColor;
				Path5.lineWidth   = 0;
				Path5.path        = [self Path5Path].CGPath;
				[Map addSublayer:Path5];
				self.layers[@"Path5"] = Path5;
				CAShapeLayer * Path6 = [CAShapeLayer layer];
				Path6.frame       = CGRectMake(45.56, 12.33, 1.85, 3.18);
				Path6.fillColor   = [UIColor colorWithRed:0.29 green: 0.565 blue:0.886 alpha:1].CGColor;
				Path6.strokeColor = [UIColor blackColor].CGColor;
				Path6.lineWidth   = 0;
				Path6.path        = [self Path6Path].CGPath;
				[Map addSublayer:Path6];
				self.layers[@"Path6"] = Path6;
				CAShapeLayer * Path7 = [CAShapeLayer layer];
				Path7.frame       = CGRectMake(44.24, 14.31, 0.66, 1.46);
				Path7.fillColor   = [UIColor colorWithRed:0.29 green: 0.565 blue:0.886 alpha:1].CGColor;
				Path7.strokeColor = [UIColor blackColor].CGColor;
				Path7.lineWidth   = 0;
				Path7.path        = [self Path7Path].CGPath;
				[Map addSublayer:Path7];
				self.layers[@"Path7"] = Path7;
				CAShapeLayer * Path8 = [CAShapeLayer layer];
				Path8.frame       = CGRectMake(44.11, 7.69, 14.57, 13.39);
				Path8.fillColor   = [UIColor colorWithRed:0.29 green: 0.565 blue:0.886 alpha:1].CGColor;
				Path8.strokeColor = [UIColor blackColor].CGColor;
				Path8.lineWidth   = 0;
				Path8.path        = [self Path8Path].CGPath;
				[Map addSublayer:Path8];
				self.layers[@"Path8"] = Path8;
				CAShapeLayer * Path9 = [CAShapeLayer layer];
				Path9.frame       = CGRectMake(54.7, 4.11, 45.3, 26.59);
				Path9.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path9.strokeColor = [UIColor blackColor].CGColor;
				Path9.lineWidth   = 0;
				Path9.path        = [self Path9Path].CGPath;
				[Map addSublayer:Path9];
				self.layers[@"Path9"] = Path9;
				CAShapeLayer * Path10 = [CAShapeLayer layer];
				Path10.frame       = CGRectMake(73.77, 1.33, 2.12, 2.12);
				Path10.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path10.strokeColor = [UIColor blackColor].CGColor;
				Path10.lineWidth   = 0;
				Path10.path        = [self Path10Path].CGPath;
				[Map addSublayer:Path10];
				self.layers[@"Path10"] = Path10;
				CAShapeLayer * Path11 = [CAShapeLayer layer];
				Path11.frame       = CGRectMake(84.77, 18.42, 3.84, 4.64);
				Path11.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path11.strokeColor = [UIColor blackColor].CGColor;
				Path11.lineWidth   = 0;
				Path11.path        = [self Path11Path].CGPath;
				[Map addSublayer:Path11];
				self.layers[@"Path11"] = Path11;
				CAShapeLayer * Path12 = [CAShapeLayer layer];
				Path12.frame       = CGRectMake(75.23, 30.35, 4.77, 6.1);
				Path12.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path12.strokeColor = [UIColor blackColor].CGColor;
				Path12.lineWidth   = 0;
				Path12.path        = [self Path12Path].CGPath;
				[Map addSublayer:Path12];
				self.layers[@"Path12"] = Path12;
				CAShapeLayer * Path13 = [CAShapeLayer layer];
				Path13.frame       = CGRectMake(78.68, 30.88, 3.18, 3.58);
				Path13.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path13.strokeColor = [UIColor blackColor].CGColor;
				Path13.lineWidth   = 0;
				Path13.path        = [self Path13Path].CGPath;
				[Map addSublayer:Path13];
				self.layers[@"Path13"] = Path13;
				CAShapeLayer * Path14 = [CAShapeLayer layer];
				Path14.frame       = CGRectMake(85.56, 33.67, 4.5, 2.92);
				Path14.fillColor   = [UIColor colorWithRed:0.494 green: 0.827 blue:0.129 alpha:1].CGColor;
				Path14.strokeColor = [UIColor blackColor].CGColor;
				Path14.lineWidth   = 0;
				Path14.path        = [self Path14Path].CGPath;
				[Map addSublayer:Path14];
				self.layers[@"Path14"] = Path14;
				CAShapeLayer * Path15 = [CAShapeLayer layer];
				Path15.frame       = CGRectMake(79.47, 36.45, 11.92, 9.15);
				Path15.fillColor   = [UIColor colorWithRed:0.494 green: 0.827 blue:0.129 alpha:1].CGColor;
				Path15.strokeColor = [UIColor blackColor].CGColor;
				Path15.lineWidth   = 0;
				Path15.path        = [self Path15Path].CGPath;
				[Map addSublayer:Path15];
				self.layers[@"Path15"] = Path15;
				CAShapeLayer * Path16 = [CAShapeLayer layer];
				Path16.frame       = CGRectMake(88.48, 46.52, 0.93, 1.06);
				Path16.fillColor   = [UIColor colorWithRed:0.494 green: 0.827 blue:0.129 alpha:1].CGColor;
				Path16.strokeColor = [UIColor blackColor].CGColor;
				Path16.lineWidth   = 0;
				Path16.path        = [self Path16Path].CGPath;
				[Map addSublayer:Path16];
				self.layers[@"Path"] = Path16;
				CAShapeLayer * Path17 = [CAShapeLayer layer];
				Path17.frame       = CGRectMake(95.1, 45.2, 3.18, 4.24);
				Path17.fillColor   = [UIColor colorWithRed:0.494 green: 0.827 blue:0.129 alpha:1].CGColor;
				Path17.strokeColor = [UIColor blackColor].CGColor;
				Path17.lineWidth   = 0;
				Path17.path        = [self Path17Path].CGPath;
				[Map addSublayer:Path17];
				self.layers[@"Path17"] = Path17;
				CAShapeLayer * Path18 = [CAShapeLayer layer];
				Path18.frame       = CGRectMake(97.88, 42.02, 1.32, 1.72);
				Path18.fillColor   = [UIColor colorWithRed:0.494 green: 0.827 blue:0.129 alpha:1].CGColor;
				Path18.strokeColor = [UIColor blackColor].CGColor;
				Path18.lineWidth   = 0;
				Path18.path        = [self Path18Path].CGPath;
				[Map addSublayer:Path18];
				self.layers[@"Path18"] = Path18;
				CAShapeLayer * Path19 = [CAShapeLayer layer];
				Path19.frame       = CGRectMake(24.11, 29.16, 13.25, 23.46);
				Path19.fillColor   = [UIColor colorWithRed:1 green: 0.475 blue:0.537 alpha:1].CGColor;
				Path19.strokeColor = [UIColor blackColor].CGColor;
				Path19.lineWidth   = 0;
				Path19.path        = [self Path19Path].CGPath;
				[Map addSublayer:Path19];
				self.layers[@"Path19"] = Path19;
				CAShapeLayer * Path20 = [CAShapeLayer layer];
				Path20.frame       = CGRectMake(27.81, 0, 15.23, 12.86);
				Path20.fillColor   = [UIColor colorWithRed:0.965 green: 0.965 blue:0.965 alpha:1].CGColor;
				Path20.strokeColor = [UIColor blackColor].CGColor;
				Path20.lineWidth   = 0;
				Path20.path        = [self Path20Path].CGPath;
				[Map addSublayer:Path20];
				self.layers[@"Path20"] = Path20;
				CAShapeLayer * Path21 = [CAShapeLayer layer];
				Path21.frame       = CGRectMake(0, 0.27, 32.19, 30.48);
				Path21.fillColor   = [UIColor colorWithRed:0.212 green: 0.929 blue:0.769 alpha:1].CGColor;
				Path21.strokeColor = [UIColor blackColor].CGColor;
				Path21.lineWidth   = 0;
				Path21.path        = [self Path21Path].CGPath;
				[Map addSublayer:Path21];
				self.layers[@"Path21"] = Path21;
				CAShapeLayer * Path22 = [CAShapeLayer layer];
				Path22.frame       = CGRectMake(23.58, 24.52, 3.58, 2.92);
				Path22.fillColor   = [UIColor colorWithRed:0.212 green: 0.929 blue:0.769 alpha:1].CGColor;
				Path22.strokeColor = [UIColor blackColor].CGColor;
				Path22.lineWidth   = 0;
				Path22.path        = [self Path22Path].CGPath;
				[Map addSublayer:Path22];
				self.layers[@"Path22"] = Path22;
				CAShapeLayer * Path23 = [CAShapeLayer layer];
				Path23.frame       = CGRectMake(1.72, 25.05, 1.32, 2.52);
				Path23.fillColor   = [UIColor colorWithRed:0.212 green: 0.929 blue:0.769 alpha:1].CGColor;
				Path23.strokeColor = [UIColor blackColor].CGColor;
				Path23.lineWidth   = 0;
				Path23.path        = [self Path23Path].CGPath;
				[Map addSublayer:Path23];
				self.layers[@"Path23"] = Path23;
				CAShapeLayer * Path24 = [CAShapeLayer layer];
				Path24.frame       = CGRectMake(69.67, 30.92, 0.4, 0.52);
				Path24.fillColor   = [UIColor colorWithRed:0.973 green: 0.906 blue:0.11 alpha:1].CGColor;
				Path24.strokeColor = [UIColor blackColor].CGColor;
				Path24.lineWidth   = 0;
				Path24.path        = [self Path24Path].CGPath;
				[Map addSublayer:Path24];
				self.layers[@"Path24"] = Path24;
			}
			
		}
		
	}
	
}





#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
}

#pragma mark - Bezier Path

- (UIBezierPath*)PathPath{
	UIBezierPath *PathPath = [UIBezierPath bezierPath];
	[PathPath moveToPoint:CGPointMake(8.796, 1.273)];
	[PathPath addCurveToPoint:CGPointMake(6.308, 0.04) controlPoint1:CGPointMake(7.949, 0.847) controlPoint2:CGPointMake(7.595, -0.219)];
	[PathPath addCurveToPoint:CGPointMake(2.81, 0.91) controlPoint1:CGPointMake(5.435, 0.216) controlPoint2:CGPointMake(3.45, 0.267)];
	[PathPath addCurveToPoint:CGPointMake(0.07, 7.29) controlPoint1:CGPointMake(1.859, 1.866) controlPoint2:CGPointMake(-0.426, 5.795)];
	[PathPath addCurveToPoint:CGPointMake(0.971, 9.103) controlPoint1:CGPointMake(0.271, 7.899) controlPoint2:CGPointMake(0.713, 8.584)];
	[PathPath addCurveToPoint:CGPointMake(4.361, 10.807) controlPoint1:CGPointMake(1.298, 9.76) controlPoint2:CGPointMake(3.479, 11.102)];
	[PathPath addCurveToPoint:CGPointMake(6.597, 10.299) controlPoint1:CGPointMake(4.935, 10.614) controlPoint2:CGPointMake(5.944, 9.971)];
	[PathPath addCurveToPoint:CGPointMake(7.354, 11.242) controlPoint1:CGPointMake(6.953, 10.478) controlPoint2:CGPointMake(7.105, 10.992)];
	[PathPath addCurveToPoint:CGPointMake(7.967, 14.106) controlPoint1:CGPointMake(7.964, 11.855) controlPoint2:CGPointMake(7.584, 13.335)];
	[PathPath addCurveToPoint:CGPointMake(8.183, 15.157) controlPoint1:CGPointMake(8.054, 14.28) controlPoint2:CGPointMake(8.282, 14.959)];
	[PathPath addCurveToPoint:CGPointMake(7.606, 17.26) controlPoint1:CGPointMake(7.872, 15.783) controlPoint2:CGPointMake(7.437, 16.41)];
	[PathPath addCurveToPoint:CGPointMake(8.76, 19.978) controlPoint1:CGPointMake(7.795, 18.21) controlPoint2:CGPointMake(8.595, 18.98)];
	[PathPath addCurveToPoint:CGPointMake(9.626, 22.915) controlPoint1:CGPointMake(8.853, 20.538) controlPoint2:CGPointMake(9.136, 22.669)];
	[PathPath addCurveToPoint:CGPointMake(15.504, 19.616) controlPoint1:CGPointMake(12.111, 24.164) controlPoint2:CGPointMake(14.223, 20.904)];
	[PathPath addCurveToPoint:CGPointMake(15.54, 17.187) controlPoint1:CGPointMake(15.936, 19.182) controlPoint2:CGPointMake(15.263, 17.744)];
	[PathPath addCurveToPoint:CGPointMake(16.874, 15.23) controlPoint1:CGPointMake(15.899, 16.466) controlPoint2:CGPointMake(16.637, 15.945)];
	[PathPath addCurveToPoint:CGPointMake(16.081, 13.997) controlPoint1:CGPointMake(16.937, 15.04) controlPoint2:CGPointMake(16.212, 14.261)];
	[PathPath addCurveToPoint:CGPointMake(18.1, 11.242) controlPoint1:CGPointMake(15.727, 13.286) controlPoint2:CGPointMake(17.897, 11.242)];
	[PathPath addCurveToPoint:CGPointMake(19.29, 7.943) controlPoint1:CGPointMake(18.693, 11.206) controlPoint2:CGPointMake(19.549, 8.203)];
	[PathPath addCurveToPoint:CGPointMake(16.514, 7.653) controlPoint1:CGPointMake(18.752, 7.402) controlPoint2:CGPointMake(17.145, 8.287)];
	[PathPath addCurveToPoint:CGPointMake(13.557, 1.671) controlPoint1:CGPointMake(15.205, 6.338) controlPoint2:CGPointMake(14.621, 2.741)];
	[PathPath addCurveToPoint:CGPointMake(11.321, 1.345) controlPoint1:CGPointMake(13.348, 1.462) controlPoint2:CGPointMake(11.658, 1.413)];
	[PathPath addCurveToPoint:CGPointMake(8.796, 1.273) controlPoint1:CGPointMake(10.654, 1.345) controlPoint2:CGPointMake(9.388, 1.57)];
	[PathPath closePath];
	[PathPath moveToPoint:CGPointMake(8.796, 1.273)];
	
	return PathPath;
}

- (UIBezierPath*)Path2Path{
	UIBezierPath *Path2Path = [UIBezierPath bezierPath];
	[Path2Path moveToPoint:CGPointMake(1.376, 0)];
	[Path2Path addCurveToPoint:CGPointMake(0.604, 4.765) controlPoint1:CGPointMake(-0.145, 0.526) controlPoint2:CGPointMake(-0.409, 3.714)];
	[Path2Path addCurveToPoint:CGPointMake(1.165, 3.237) controlPoint1:CGPointMake(0.714, 4.879) controlPoint2:CGPointMake(1.086, 3.403)];
	[Path2Path addCurveToPoint:CGPointMake(1.376, 0) controlPoint1:CGPointMake(1.604, 2.329) controlPoint2:CGPointMake(2.351, 0.759)];
	[Path2Path addLineToPoint:CGPointMake(1.376, 0)];
	[Path2Path closePath];
	[Path2Path moveToPoint:CGPointMake(1.376, 0)];
	
	return Path2Path;
}

- (UIBezierPath*)Path3Path{
	UIBezierPath *Path3Path = [UIBezierPath bezierPath];
	[Path3Path moveToPoint:CGPointMake(0.239, 0.107)];
	[Path3Path addCurveToPoint:CGPointMake(0.026, 1.463) controlPoint1:CGPointMake(0.179, 0.351) controlPoint2:CGPointMake(-0.082, 1.246)];
	[Path3Path addCurveToPoint:CGPointMake(1.128, 1.57) controlPoint1:CGPointMake(0.173, 1.758) controlPoint2:CGPointMake(0.885, 1.448)];
	[Path3Path addCurveToPoint:CGPointMake(2.764, -0) controlPoint1:CGPointMake(2.65, 2.333) controlPoint2:CGPointMake(5.054, -0)];
	[Path3Path addLineToPoint:CGPointMake(1.733, -0)];
	[Path3Path addCurveToPoint:CGPointMake(0.239, 0.107) controlPoint1:CGPointMake(1.216, -0) controlPoint2:CGPointMake(0.765, 0.032)];
	[Path3Path addLineToPoint:CGPointMake(0.239, 0.107)];
	[Path3Path closePath];
	[Path3Path moveToPoint:CGPointMake(0.239, 0.107)];
	
	return Path3Path;
}

- (UIBezierPath*)Path4Path{
	UIBezierPath *Path4Path = [UIBezierPath bezierPath];
	[Path4Path moveToPoint:CGPointMake(2.069, 0.399)];
	[Path4Path addCurveToPoint:CGPointMake(1.081, 1.14) controlPoint1:CGPointMake(1.709, 0.642) controlPoint2:CGPointMake(1.356, 0.862)];
	[Path4Path addCurveToPoint:CGPointMake(0.02, 2.547) controlPoint1:CGPointMake(0.888, 1.335) controlPoint2:CGPointMake(-0.157, 2.367)];
	[Path4Path addCurveToPoint:CGPointMake(3.093, 0.918) controlPoint1:CGPointMake(0.557, 3.09) controlPoint2:CGPointMake(2.672, 1.344)];
	[Path4Path addCurveToPoint:CGPointMake(4.227, 0.473) controlPoint1:CGPointMake(3.355, 0.652) controlPoint2:CGPointMake(3.987, 0.716)];
	[Path4Path addCurveToPoint:CGPointMake(4.227, 0.103) controlPoint1:CGPointMake(4.242, 0.458) controlPoint2:CGPointMake(4.242, 0.118)];
	[Path4Path addCurveToPoint:CGPointMake(2.069, 0.399) controlPoint1:CGPointMake(3.903, -0.225) controlPoint2:CGPointMake(2.257, 0.329)];
	[Path4Path addLineToPoint:CGPointMake(2.069, 0.399)];
	[Path4Path closePath];
	[Path4Path moveToPoint:CGPointMake(2.069, 0.399)];
	
	return Path4Path;
}

- (UIBezierPath*)Path5Path{
	UIBezierPath *Path5Path = [UIBezierPath bezierPath];
	[Path5Path moveToPoint:CGPointMake(1.03, 0)];
	[Path5Path addLineToPoint:CGPointMake(2.165, 0)];
	[Path5Path addCurveToPoint:CGPointMake(2.414, 1.656) controlPoint1:CGPointMake(4.25, 0) controlPoint2:CGPointMake(2.959, 1.09)];
	[Path5Path addCurveToPoint:CGPointMake(0.143, 0.699) controlPoint1:CGPointMake(2.196, 1.881) controlPoint2:CGPointMake(-0.665, 1.537)];
	[Path5Path addCurveToPoint:CGPointMake(1.03, 0) controlPoint1:CGPointMake(0.375, 0.459) controlPoint2:CGPointMake(0.616, 0.303)];
	[Path5Path addLineToPoint:CGPointMake(1.03, 0)];
	[Path5Path closePath];
	[Path5Path moveToPoint:CGPointMake(1.03, 0)];
	
	return Path5Path;
}

- (UIBezierPath*)Path6Path{
	UIBezierPath *Path6Path = [UIBezierPath bezierPath];
	[Path6Path moveToPoint:CGPointMake(0.641, 0.068)];
	[Path6Path addCurveToPoint:CGPointMake(0.459, 1.942) controlPoint1:CGPointMake(-0.686, -0.362) controlPoint2:CGPointMake(0.459, 1.356)];
	[Path6Path addCurveToPoint:CGPointMake(0.168, 3.18) controlPoint1:CGPointMake(0.459, 2.189) controlPoint2:CGPointMake(-0.022, 2.994)];
	[Path6Path addCurveToPoint:CGPointMake(1.766, 1.978) controlPoint1:CGPointMake(0.204, 3.215) controlPoint2:CGPointMake(2.304, 2.501)];
	[Path6Path addCurveToPoint:CGPointMake(0.641, 0.068) controlPoint1:CGPointMake(1.334, 1.556) controlPoint2:CGPointMake(0.911, 0.695)];
	[Path6Path addLineToPoint:CGPointMake(0.641, 0.068)];
	[Path6Path closePath];
	[Path6Path moveToPoint:CGPointMake(0.641, 0.068)];
	
	return Path6Path;
}

- (UIBezierPath*)Path7Path{
	UIBezierPath *Path7Path = [UIBezierPath bezierPath];
	[Path7Path moveToPoint:CGPointMake(0.611, 0.257)];
	[Path7Path addCurveToPoint:CGPointMake(0.014, 1.107) controlPoint1:CGPointMake(0.38, -0.513) controlPoint2:CGPointMake(-0.088, 0.65)];
	[Path7Path addCurveToPoint:CGPointMake(0.611, 0.257) controlPoint1:CGPointMake(0.146, 1.694) controlPoint2:CGPointMake(0.857, 1.629)];
	[Path7Path addLineToPoint:CGPointMake(0.611, 0.257)];
	[Path7Path closePath];
	[Path7Path moveToPoint:CGPointMake(0.611, 0.257)];
	
	return Path7Path;
}

- (UIBezierPath*)Path8Path{
	UIBezierPath *Path8Path = [UIBezierPath bezierPath];
	[Path8Path moveToPoint:CGPointMake(2.011, 8.878)];
	[Path8Path addCurveToPoint:CGPointMake(1.939, 10.827) controlPoint1:CGPointMake(1.904, 9.306) controlPoint2:CGPointMake(2.197, 10.57)];
	[Path8Path addCurveToPoint:CGPointMake(0.06, 11.802) controlPoint1:CGPointMake(1.196, 11.57) controlPoint2:CGPointMake(0.515, 9.985)];
	[Path8Path addCurveToPoint:CGPointMake(2.734, 12.813) controlPoint1:CGPointMake(-0.385, 13.579) controlPoint2:CGPointMake(1.766, 13.779)];
	[Path8Path addCurveToPoint:CGPointMake(4.035, 10.647) controlPoint1:CGPointMake(3.408, 12.139) controlPoint2:CGPointMake(2.409, 11.188)];
	[Path8Path addCurveToPoint:CGPointMake(6.203, 11.441) controlPoint1:CGPointMake(4.947, 10.343) controlPoint2:CGPointMake(5.488, 11.203)];
	[Path8Path addCurveToPoint:CGPointMake(7.865, 11.26) controlPoint1:CGPointMake(6.97, 11.696) controlPoint2:CGPointMake(7.324, 11.08)];
	[Path8Path addCurveToPoint:CGPointMake(10.611, 11.91) controlPoint1:CGPointMake(8.788, 11.568) controlPoint2:CGPointMake(9.629, 12.401)];
	[Path8Path addCurveToPoint:CGPointMake(11.153, 10.466) controlPoint1:CGPointMake(11.076, 11.678) controlPoint2:CGPointMake(10.67, 10.627)];
	[Path8Path addCurveToPoint:CGPointMake(12.96, 10.141) controlPoint1:CGPointMake(11.541, 10.337) controlPoint2:CGPointMake(12.784, 10.493)];
	[Path8Path addCurveToPoint:CGPointMake(11.406, 8.445) controlPoint1:CGPointMake(13.406, 9.249) controlPoint2:CGPointMake(10.899, 8.951)];
	[Path8Path addCurveToPoint:CGPointMake(13.935, 6.062) controlPoint1:CGPointMake(12.112, 7.739) controlPoint2:CGPointMake(13.432, 7.068)];
	[Path8Path addCurveToPoint:CGPointMake(14.369, 3.246) controlPoint1:CGPointMake(14.361, 5.212) controlPoint2:CGPointMake(14.133, 4.188)];
	[Path8Path addCurveToPoint:CGPointMake(14.514, 1.73) controlPoint1:CGPointMake(14.448, 2.929) controlPoint2:CGPointMake(14.673, 2.049)];
	[Path8Path addCurveToPoint:CGPointMake(12.02, 0.683) controlPoint1:CGPointMake(14.243, 1.189) controlPoint2:CGPointMake(12.617, 0.832)];
	[Path8Path addCurveToPoint:CGPointMake(6.925, 0.503) controlPoint1:CGPointMake(10.141, 0.214) controlPoint2:CGPointMake(8.911, -0.489)];
	[Path8Path addCurveToPoint:CGPointMake(5.805, 2.777) controlPoint1:CGPointMake(6.496, 0.717) controlPoint2:CGPointMake(6.129, 2.346)];
	[Path8Path addCurveToPoint:CGPointMake(4.649, 5.087) controlPoint1:CGPointMake(5.116, 3.695) controlPoint2:CGPointMake(3.917, 3.626)];
	[Path8Path addCurveToPoint:CGPointMake(4.721, 5.701) controlPoint1:CGPointMake(4.723, 5.235) controlPoint2:CGPointMake(4.609, 5.589)];
	[Path8Path addCurveToPoint:CGPointMake(5.841, 5.412) controlPoint1:CGPointMake(5.034, 6.014) controlPoint2:CGPointMake(5.754, 5.325)];
	[Path8Path addCurveToPoint:CGPointMake(6.419, 6.098) controlPoint1:CGPointMake(6.2, 5.771) controlPoint2:CGPointMake(5.347, 6.098)];
	[Path8Path addCurveToPoint:CGPointMake(7.503, 6.026) controlPoint1:CGPointMake(6.732, 6.098) controlPoint2:CGPointMake(7.332, 6.197)];
	[Path8Path addCurveToPoint:CGPointMake(7.756, 5.051) controlPoint1:CGPointMake(7.621, 5.908) controlPoint2:CGPointMake(7.656, 5.252)];
	[Path8Path addCurveToPoint:CGPointMake(8.226, 4.438) controlPoint1:CGPointMake(7.824, 4.916) controlPoint2:CGPointMake(8.37, 4.725)];
	[Path8Path addCurveToPoint:CGPointMake(7.865, 3.246) controlPoint1:CGPointMake(8.031, 4.047) controlPoint2:CGPointMake(7.735, 3.766)];
	[Path8Path addCurveToPoint:CGPointMake(9.31, 2.344) controlPoint1:CGPointMake(7.929, 2.988) controlPoint2:CGPointMake(8.918, 1.952)];
	[Path8Path addCurveToPoint:CGPointMake(8.696, 3.968) controlPoint1:CGPointMake(9.774, 2.807) controlPoint2:CGPointMake(8.504, 3.392)];
	[Path8Path addCurveToPoint:CGPointMake(9.888, 5.051) controlPoint1:CGPointMake(8.871, 4.494) controlPoint2:CGPointMake(10.051, 4.238)];
	[Path8Path addCurveToPoint:CGPointMake(5.263, 7.217) controlPoint1:CGPointMake(9.546, 6.761) controlPoint2:CGPointMake(6.318, 6.69)];
	[Path8Path addCurveToPoint:CGPointMake(4.287, 7.253) controlPoint1:CGPointMake(5.078, 7.31) controlPoint2:CGPointMake(4.378, 7.163)];
	[Path8Path addCurveToPoint:CGPointMake(4.143, 8.336) controlPoint1:CGPointMake(4.088, 7.453) controlPoint2:CGPointMake(4.284, 8.055)];
	[Path8Path addCurveToPoint:CGPointMake(2.011, 8.878) controlPoint1:CGPointMake(4.117, 8.389) controlPoint2:CGPointMake(2.376, 8.86)];
	[Path8Path addLineToPoint:CGPointMake(2.011, 8.878)];
	[Path8Path closePath];
	[Path8Path moveToPoint:CGPointMake(2.011, 8.878)];
	
	return Path8Path;
}

- (UIBezierPath*)Path9Path{
	UIBezierPath *Path9Path = [UIBezierPath bezierPath];
	[Path9Path moveToPoint:CGPointMake(3.625, 10.7)];
	[Path9Path addCurveToPoint:CGPointMake(1.755, 11.937) controlPoint1:CGPointMake(3.308, 11.337) controlPoint2:CGPointMake(2.032, 11.381)];
	[Path9Path addCurveToPoint:CGPointMake(2.52, 12.619) controlPoint1:CGPointMake(1.654, 12.141) controlPoint2:CGPointMake(2.42, 12.52)];
	[Path9Path addCurveToPoint:CGPointMake(3.88, 15.648) controlPoint1:CGPointMake(2.978, 13.079) controlPoint2:CGPointMake(4.217, 14.634)];
	[Path9Path addCurveToPoint:CGPointMake(0.055, 16.799) controlPoint1:CGPointMake(3.706, 16.171) controlPoint2:CGPointMake(-0.527, 15.632)];
	[Path9Path addCurveToPoint:CGPointMake(2.562, 17.439) controlPoint1:CGPointMake(0.507, 17.707) controlPoint2:CGPointMake(2.047, 16.922)];
	[Path9Path addCurveToPoint:CGPointMake(2.52, 20.041) controlPoint1:CGPointMake(2.939, 17.817) controlPoint2:CGPointMake(2.101, 19.62)];
	[Path9Path addCurveToPoint:CGPointMake(6.473, 24.477) controlPoint1:CGPointMake(4.081, 21.607) controlPoint2:CGPointMake(3.359, 25.102)];
	[Path9Path addCurveToPoint:CGPointMake(8.98, 22.899) controlPoint1:CGPointMake(7.744, 24.222) controlPoint2:CGPointMake(8.177, 23.705)];
	[Path9Path addCurveToPoint:CGPointMake(10.808, 20.809) controlPoint1:CGPointMake(9.543, 22.334) controlPoint2:CGPointMake(9.112, 20.241)];
	[Path9Path addCurveToPoint:CGPointMake(13.996, 24.946) controlPoint1:CGPointMake(13.342, 21.656) controlPoint2:CGPointMake(12.976, 22.899)];
	[Path9Path addCurveToPoint:CGPointMake(14.497, 26.564) controlPoint1:CGPointMake(14.235, 25.426) controlPoint2:CGPointMake(14.153, 26.232)];
	[Path9Path addCurveToPoint:CGPointMake(15.696, 23.794) controlPoint1:CGPointMake(14.841, 26.896) controlPoint2:CGPointMake(15.478, 24.231)];
	[Path9Path addCurveToPoint:CGPointMake(18.076, 21.491) controlPoint1:CGPointMake(16.243, 22.697) controlPoint2:CGPointMake(17.227, 22.343)];
	[Path9Path addCurveToPoint:CGPointMake(18.331, 21.576) controlPoint1:CGPointMake(18.135, 21.432) controlPoint2:CGPointMake(18.298, 21.543)];
	[Path9Path addCurveToPoint:CGPointMake(19.521, 24.221) controlPoint1:CGPointMake(19.034, 22.282) controlPoint2:CGPointMake(18.857, 23.555)];
	[Path9Path addCurveToPoint:CGPointMake(22.369, 25.756) controlPoint1:CGPointMake(20.308, 25.01) controlPoint2:CGPointMake(21.62, 25.005)];
	[Path9Path addCurveToPoint:CGPointMake(23.219, 26.098) controlPoint1:CGPointMake(22.653, 25.799) controlPoint2:CGPointMake(22.907, 26.254)];
	[Path9Path addCurveToPoint:CGPointMake(23.219, 25.799) controlPoint1:CGPointMake(23.236, 26.089) controlPoint2:CGPointMake(23.219, 25.801)];
	[Path9Path addCurveToPoint:CGPointMake(22.879, 22.856) controlPoint1:CGPointMake(23.219, 24.954) controlPoint2:CGPointMake(22.492, 23.632)];
	[Path9Path addCurveToPoint:CGPointMake(24.239, 22.131) controlPoint1:CGPointMake(23.108, 22.396) controlPoint2:CGPointMake(23.817, 22.413)];
	[Path9Path addCurveToPoint:CGPointMake(27.299, 19.486) controlPoint1:CGPointMake(25.428, 21.335) controlPoint2:CGPointMake(26.4, 20.388)];
	[Path9Path addCurveToPoint:CGPointMake(26.747, 16.458) controlPoint1:CGPointMake(27.917, 18.866) controlPoint2:CGPointMake(27.197, 16.91)];
	[Path9Path addCurveToPoint:CGPointMake(26.662, 16.117) controlPoint1:CGPointMake(26.731, 16.442) controlPoint2:CGPointMake(26.593, 16.186)];
	[Path9Path addCurveToPoint:CGPointMake(28.957, 16.97) controlPoint1:CGPointMake(27.341, 15.435) controlPoint2:CGPointMake(28.67, 17.257)];
	[Path9Path addCurveToPoint:CGPointMake(29.212, 15.648) controlPoint1:CGPointMake(29.264, 16.662) controlPoint2:CGPointMake(28.737, 15.965)];
	[Path9Path addCurveToPoint:CGPointMake(31.592, 14.453) controlPoint1:CGPointMake(29.937, 15.162) controlPoint2:CGPointMake(30.986, 15.061)];
	[Path9Path addCurveToPoint:CGPointMake(32.527, 12.961) controlPoint1:CGPointMake(31.939, 14.105) controlPoint2:CGPointMake(32.054, 13.198)];
	[Path9Path addCurveToPoint:CGPointMake(33.59, 12.534) controlPoint1:CGPointMake(32.788, 12.83) controlPoint2:CGPointMake(33.361, 12.763)];
	[Path9Path addCurveToPoint:CGPointMake(32.357, 10.657) controlPoint1:CGPointMake(34.259, 11.862) controlPoint2:CGPointMake(32.589, 11.124)];
	[Path9Path addCurveToPoint:CGPointMake(33.547, 8.781) controlPoint1:CGPointMake(31.918, 9.777) controlPoint2:CGPointMake(32.923, 9.198)];
	[Path9Path addCurveToPoint:CGPointMake(36.267, 8.439) controlPoint1:CGPointMake(34.426, 8.193) controlPoint2:CGPointMake(35.298, 8.683)];
	[Path9Path addCurveToPoint:CGPointMake(38.86, 7.8) controlPoint1:CGPointMake(36.613, 8.353) controlPoint2:CGPointMake(38.778, 7.553)];
	[Path9Path addCurveToPoint:CGPointMake(37.627, 8.866) controlPoint1:CGPointMake(39.064, 8.413) controlPoint2:CGPointMake(37.994, 8.59)];
	[Path9Path addCurveToPoint:CGPointMake(37.415, 11.596) controlPoint1:CGPointMake(36.77, 9.511) controlPoint2:CGPointMake(36.639, 10.818)];
	[Path9Path addCurveToPoint:CGPointMake(39.115, 9.463) controlPoint1:CGPointMake(37.645, 11.827) controlPoint2:CGPointMake(38.978, 9.692)];
	[Path9Path addCurveToPoint:CGPointMake(39.667, 8.354) controlPoint1:CGPointMake(39.319, 9.122) controlPoint2:CGPointMake(39.667, 8.72)];
	[Path9Path addCurveToPoint:CGPointMake(39.752, 8.184) controlPoint1:CGPointMake(39.667, 8.282) controlPoint2:CGPointMake(39.678, 8.221)];
	[Path9Path addCurveToPoint:CGPointMake(45.235, 5.539) controlPoint1:CGPointMake(40.532, 7.793) controlPoint2:CGPointMake(44.955, 5.82)];
	[Path9Path addCurveToPoint:CGPointMake(44.47, 4.515) controlPoint1:CGPointMake(45.531, 5.243) controlPoint2:CGPointMake(44.7, 4.285)];
	[Path9Path addCurveToPoint:CGPointMake(40.985, 4.686) controlPoint1:CGPointMake(43.992, 4.995) controlPoint2:CGPointMake(41.61, 4.791)];
	[Path9Path addCurveToPoint:CGPointMake(33.037, 2.937) controlPoint1:CGPointMake(38.298, 4.237) controlPoint2:CGPointMake(35.713, 3.474)];
	[Path9Path addCurveToPoint:CGPointMake(25.812, 2.042) controlPoint1:CGPointMake(30.627, 2.454) controlPoint2:CGPointMake(28.283, 2.042)];
	[Path9Path addCurveToPoint:CGPointMake(23.389, 2.042) controlPoint1:CGPointMake(25.563, 2.042) controlPoint2:CGPointMake(23.493, 2.252)];
	[Path9Path addCurveToPoint:CGPointMake(24.324, 0.805) controlPoint1:CGPointMake(23.204, 1.671) controlPoint2:CGPointMake(24.535, 1.44)];
	[Path9Path addCurveToPoint:CGPointMake(21.476, 0.037) controlPoint1:CGPointMake(24.166, 0.331) controlPoint2:CGPointMake(21.994, -0.136)];
	[Path9Path addCurveToPoint:CGPointMake(14.208, 2.297) controlPoint1:CGPointMake(19.145, 0.817) controlPoint2:CGPointMake(16.796, 2.297)];
	[Path9Path addCurveToPoint:CGPointMake(11.786, 2.17) controlPoint1:CGPointMake(13.499, 2.297) controlPoint2:CGPointMake(12.335, 1.894)];
	[Path9Path addCurveToPoint:CGPointMake(9.32, 3.662) controlPoint1:CGPointMake(10.913, 2.607) controlPoint2:CGPointMake(10.431, 3.291)];
	[Path9Path addCurveToPoint:CGPointMake(4.603, 5.113) controlPoint1:CGPointMake(7.498, 4.272) controlPoint2:CGPointMake(5.904, 3.806)];
	[Path9Path addCurveToPoint:CGPointMake(3.625, 10.7) controlPoint1:CGPointMake(5.115, 7.171) controlPoint2:CGPointMake(4.378, 9.19)];
	[Path9Path closePath];
	[Path9Path moveToPoint:CGPointMake(3.625, 10.7)];
	
	return Path9Path;
}

- (UIBezierPath*)Path10Path{
	UIBezierPath *Path10Path = [UIBezierPath bezierPath];
	[Path10Path moveToPoint:CGPointMake(1.436, 0.978)];
	[Path10Path addCurveToPoint:CGPointMake(0.076, 0.041) controlPoint1:CGPointMake(1.07, 0.861) controlPoint2:CGPointMake(0.625, -0.222)];
	[Path10Path addCurveToPoint:CGPointMake(0.883, 2.038) controlPoint1:CGPointMake(-0.254, 0.199) controlPoint2:CGPointMake(0.583, 1.966)];
	[Path10Path addCurveToPoint:CGPointMake(1.436, 0.978) controlPoint1:CGPointMake(2.115, 2.333) controlPoint2:CGPointMake(2.647, 1.807)];
	[Path10Path addLineToPoint:CGPointMake(1.436, 0.978)];
	[Path10Path closePath];
	[Path10Path moveToPoint:CGPointMake(1.436, 0.978)];
	
	return Path10Path;
}

- (UIBezierPath*)Path11Path{
	UIBezierPath *Path11Path = [UIBezierPath bezierPath];
	[Path11Path moveToPoint:CGPointMake(3.841, -0)];
	[Path11Path addCurveToPoint:CGPointMake(2.121, 2.414) controlPoint1:CGPointMake(2.816, 0.345) controlPoint2:CGPointMake(2.525, 1.599)];
	[Path11Path addCurveToPoint:CGPointMake(0.107, 3.77) controlPoint1:CGPointMake(1.734, 3.197) controlPoint2:CGPointMake(0.765, 3.437)];
	[Path11Path addCurveToPoint:CGPointMake(0.233, 4.574) controlPoint1:CGPointMake(-0.119, 3.884) controlPoint2:CGPointMake(0.057, 4.485)];
	[Path11Path addCurveToPoint:CGPointMake(1.702, 3.812) controlPoint1:CGPointMake(0.832, 4.877) controlPoint2:CGPointMake(1.262, 4.034)];
	[Path11Path addCurveToPoint:CGPointMake(3.841, -0) controlPoint1:CGPointMake(3.687, 2.81) controlPoint2:CGPointMake(3.469, 2.131)];
	[Path11Path addLineToPoint:CGPointMake(3.841, -0)];
	[Path11Path closePath];
	[Path11Path moveToPoint:CGPointMake(3.841, -0)];
	
	return Path11Path;
}

- (UIBezierPath*)Path12Path{
	UIBezierPath *Path12Path = [UIBezierPath bezierPath];
	[Path12Path moveToPoint:CGPointMake(0.838, 0.305)];
	[Path12Path addCurveToPoint:CGPointMake(0.024, 2.139) controlPoint1:CGPointMake(0.049, -0.874) controlPoint2:CGPointMake(-0.061, 1.713)];
	[Path12Path addCurveToPoint:CGPointMake(2.036, 5.295) controlPoint1:CGPointMake(0.215, 3.089) controlPoint2:CGPointMake(0.885, 5.008)];
	[Path12Path addCurveToPoint:CGPointMake(3.321, 5.551) controlPoint1:CGPointMake(2.401, 5.386) controlPoint2:CGPointMake(3, 5.391)];
	[Path12Path addCurveToPoint:CGPointMake(4.69, 6.062) controlPoint1:CGPointMake(3.528, 5.654) controlPoint2:CGPointMake(4.508, 6.244)];
	[Path12Path addCurveToPoint:CGPointMake(2.293, 4.186) controlPoint1:CGPointMake(5.259, 5.496) controlPoint2:CGPointMake(2.528, 4.42)];
	[Path12Path addCurveToPoint:CGPointMake(0.838, 0.305) controlPoint1:CGPointMake(0.904, 2.802) controlPoint2:CGPointMake(3.131, 1.876)];
	[Path12Path addLineToPoint:CGPointMake(0.838, 0.305)];
	[Path12Path closePath];
	[Path12Path moveToPoint:CGPointMake(0.838, 0.305)];
	
	return Path12Path;
}

- (UIBezierPath*)Path13Path{
	UIBezierPath *Path13Path = [UIBezierPath bezierPath];
	[Path13Path moveToPoint:CGPointMake(2.183, -0)];
	[Path13Path addCurveToPoint:CGPointMake(0.936, 1.391) controlPoint1:CGPointMake(1.505, -0) controlPoint2:CGPointMake(1.205, 0.864)];
	[Path13Path addCurveToPoint:CGPointMake(0.076, 2.065) controlPoint1:CGPointMake(0.785, 1.686) controlPoint2:CGPointMake(0.267, 1.877)];
	[Path13Path addCurveToPoint:CGPointMake(0.893, 3.539) controlPoint1:CGPointMake(-0.275, 2.408) controlPoint2:CGPointMake(0.695, 3.443)];
	[Path13Path addCurveToPoint:CGPointMake(1.796, 3.371) controlPoint1:CGPointMake(1.194, 3.687) controlPoint2:CGPointMake(1.52, 3.371)];
	[Path13Path addCurveToPoint:CGPointMake(3.129, 3.413) controlPoint1:CGPointMake(2.017, 3.371) controlPoint2:CGPointMake(3.011, 3.529)];
	[Path13Path addCurveToPoint:CGPointMake(2.527, 1.559) controlPoint1:CGPointMake(3.392, 3.156) controlPoint2:CGPointMake(2.527, 1.911)];
	[Path13Path addCurveToPoint:CGPointMake(2.183, -0) controlPoint1:CGPointMake(2.527, 0.773) controlPoint2:CGPointMake(2.644, 0.847)];
	[Path13Path addLineToPoint:CGPointMake(2.183, -0)];
	[Path13Path closePath];
	[Path13Path moveToPoint:CGPointMake(2.183, -0)];
	
	return Path13Path;
}

- (UIBezierPath*)Path14Path{
	UIBezierPath *Path14Path = [UIBezierPath bezierPath];
	[Path14Path moveToPoint:CGPointMake(1.99, 0.483)];
	[Path14Path addCurveToPoint:CGPointMake(0.118, 0.483) controlPoint1:CGPointMake(1.695, 0.263) controlPoint2:CGPointMake(-0.531, -0.484)];
	[Path14Path addCurveToPoint:CGPointMake(3.139, 2.047) controlPoint1:CGPointMake(0.545, 1.12) controlPoint2:CGPointMake(2.481, 1.72)];
	[Path14Path addCurveToPoint:CGPointMake(4.415, 2.893) controlPoint1:CGPointMake(3.309, 2.132) controlPoint2:CGPointMake(4.233, 3.073)];
	[Path14Path addCurveToPoint:CGPointMake(1.99, 0.483) controlPoint1:CGPointMake(5, 2.311) controlPoint2:CGPointMake(2.51, 0.605)];
	[Path14Path addLineToPoint:CGPointMake(1.99, 0.483)];
	[Path14Path closePath];
	[Path14Path moveToPoint:CGPointMake(1.99, 0.483)];
	
	return Path14Path;
}

- (UIBezierPath*)Path15Path{
	UIBezierPath *Path15Path = [UIBezierPath bezierPath];
	[Path15Path moveToPoint:CGPointMake(4.613, 0.929)];
	[Path15Path addCurveToPoint:CGPointMake(0.175, 4.117) controlPoint1:CGPointMake(3.832, 2.892) controlPoint2:CGPointMake(1.007, 2.444)];
	[Path15Path addCurveToPoint:CGPointMake(0.006, 5.604) controlPoint1:CGPointMake(-0.02, 4.509) controlPoint2:CGPointMake(0.006, 5.152)];
	[Path15Path addCurveToPoint:CGPointMake(0.091, 6.794) controlPoint1:CGPointMake(0.006, 6.008) controlPoint2:CGPointMake(-0.034, 6.419)];
	[Path15Path addCurveToPoint:CGPointMake(5.669, 6.412) controlPoint1:CGPointMake(1.225, 10.215) controlPoint2:CGPointMake(3.8, 5.942)];
	[Path15Path addCurveToPoint:CGPointMake(10.36, 9.004) controlPoint1:CGPointMake(7.024, 6.752) controlPoint2:CGPointMake(8.711, 9.833)];
	[Path15Path addCurveToPoint:CGPointMake(11.121, 6.667) controlPoint1:CGPointMake(11.172, 8.596) controlPoint2:CGPointMake(10.926, 7.451)];
	[Path15Path addCurveToPoint:CGPointMake(11.882, 4.839) controlPoint1:CGPointMake(11.231, 6.224) controlPoint2:CGPointMake(12.115, 5.308)];
	[Path15Path addCurveToPoint:CGPointMake(9.811, 3.012) controlPoint1:CGPointMake(11.499, 4.07) controlPoint2:CGPointMake(10.226, 3.847)];
	[Path15Path addCurveToPoint:CGPointMake(7.74, 0.08) controlPoint1:CGPointMake(9.223, 1.829) controlPoint2:CGPointMake(9.005, 0.715)];
	[Path15Path addCurveToPoint:CGPointMake(4.613, 0.929) controlPoint1:CGPointMake(7.009, -0.288) controlPoint2:CGPointMake(5.302, 0.725)];
	[Path15Path addLineToPoint:CGPointMake(4.613, 0.929)];
	[Path15Path closePath];
	[Path15Path moveToPoint:CGPointMake(4.613, 0.929)];
	
	return Path15Path;
}

- (UIBezierPath*)Path16Path{
	UIBezierPath *Path16Path = [UIBezierPath bezierPath];
	[Path16Path moveToPoint:CGPointMake(0.927, 0)];
	[Path16Path addCurveToPoint:CGPointMake(0.927, 0) controlPoint1:CGPointMake(-0.828, 0) controlPoint2:CGPointMake(0.341, 2.386)];
	[Path16Path addLineToPoint:CGPointMake(0.927, 0)];
	[Path16Path closePath];
	[Path16Path moveToPoint:CGPointMake(0.927, 0)];
	
	return Path16Path;
}

- (UIBezierPath*)Path17Path{
	UIBezierPath *Path17Path = [UIBezierPath bezierPath];
	[Path17Path moveToPoint:CGPointMake(3.179, 0.89)];
	[Path17Path addCurveToPoint:CGPointMake(2.135, 0.036) controlPoint1:CGPointMake(2.827, 0.775) controlPoint2:CGPointMake(2.609, -0.197)];
	[Path17Path addCurveToPoint:CGPointMake(0.482, 4.181) controlPoint1:CGPointMake(1.886, 0.158) controlPoint2:CGPointMake(-1.156, 4.824)];
	[Path17Path addCurveToPoint:CGPointMake(2.048, 2.258) controlPoint1:CGPointMake(1.311, 3.855) controlPoint2:CGPointMake(1.31, 2.741)];
	[Path17Path addCurveToPoint:CGPointMake(3.179, 0.89) controlPoint1:CGPointMake(2.556, 1.925) controlPoint2:CGPointMake(2.837, 1.428)];
	[Path17Path addLineToPoint:CGPointMake(3.179, 0.89)];
	[Path17Path closePath];
	[Path17Path moveToPoint:CGPointMake(3.179, 0.89)];
	
	return Path17Path;
}

- (UIBezierPath*)Path18Path{
	UIBezierPath *Path18Path = [UIBezierPath bezierPath];
	[Path18Path moveToPoint:CGPointMake(0.899, 0.004)];
	[Path18Path addCurveToPoint:CGPointMake(0.043, 0.558) controlPoint1:CGPointMake(0.465, 0.004) controlPoint2:CGPointMake(-0.172, -0.083)];
	[Path18Path addCurveToPoint:CGPointMake(1.241, 1.708) controlPoint1:CGPointMake(0.093, 0.707) controlPoint2:CGPointMake(1.082, 1.867)];
	[Path18Path addCurveToPoint:CGPointMake(0.899, 0.004) controlPoint1:CGPointMake(1.537, 1.413) controlPoint2:CGPointMake(0.955, 0.117)];
	[Path18Path addLineToPoint:CGPointMake(0.899, 0.004)];
	[Path18Path closePath];
	[Path18Path moveToPoint:CGPointMake(0.899, 0.004)];
	
	return Path18Path;
}

- (UIBezierPath*)Path19Path{
	UIBezierPath *Path19Path = [UIBezierPath bezierPath];
	[Path19Path moveToPoint:CGPointMake(3.412, 0.001)];
	[Path19Path addCurveToPoint:CGPointMake(1.678, 0.389) controlPoint1:CGPointMake(2.923, 0.001) controlPoint2:CGPointMake(1.888, -0.034)];
	[Path19Path addCurveToPoint:CGPointMake(1.486, 2.008) controlPoint1:CGPointMake(1.529, 0.69) controlPoint2:CGPointMake(1.669, 1.822)];
	[Path19Path addCurveToPoint:CGPointMake(0.009, 4.727) controlPoint1:CGPointMake(0.809, 2.689) controlPoint2:CGPointMake(0.308, 3.821)];
	[Path19Path addCurveToPoint:CGPointMake(1.229, 9.064) controlPoint1:CGPointMake(-0.111, 5.089) controlPoint2:CGPointMake(1.017, 8.85)];
	[Path19Path addCurveToPoint:CGPointMake(2.577, 9.906) controlPoint1:CGPointMake(1.568, 9.406) controlPoint2:CGPointMake(2.223, 9.548)];
	[Path19Path addCurveToPoint:CGPointMake(2.642, 13.401) controlPoint1:CGPointMake(3.05, 10.382) controlPoint2:CGPointMake(2.855, 12.756)];
	[Path19Path addCurveToPoint:CGPointMake(2.385, 16.185) controlPoint1:CGPointMake(2.369, 14.227) controlPoint2:CGPointMake(2.761, 15.427)];
	[Path19Path addCurveToPoint:CGPointMake(3.476, 23.436) controlPoint1:CGPointMake(1.299, 18.375) controlPoint2:CGPointMake(1.379, 22.378)];
	[Path19Path addCurveToPoint:CGPointMake(3.733, 20.911) controlPoint1:CGPointMake(4.06, 23.73) controlPoint2:CGPointMake(3.733, 21.242)];
	[Path19Path addCurveToPoint:CGPointMake(5.274, 17.415) controlPoint1:CGPointMake(3.733, 19.431) controlPoint2:CGPointMake(4.395, 18.302)];
	[Path19Path addCurveToPoint:CGPointMake(8.357, 15.214) controlPoint1:CGPointMake(6.027, 16.656) controlPoint2:CGPointMake(7.842, 16.252)];
	[Path19Path addCurveToPoint:CGPointMake(9.834, 11.848) controlPoint1:CGPointMake(8.727, 14.468) controlPoint2:CGPointMake(9.381, 12.304)];
	[Path19Path addCurveToPoint:CGPointMake(11.76, 10.682) controlPoint1:CGPointMake(10.421, 11.255) controlPoint2:CGPointMake(11.277, 11.169)];
	[Path19Path addCurveToPoint:CGPointMake(11.888, 8.805) controlPoint1:CGPointMake(12.105, 10.334) controlPoint2:CGPointMake(11.566, 9.13)];
	[Path19Path addCurveToPoint:CGPointMake(13.108, 6.086) controlPoint1:CGPointMake(12.33, 8.36) controlPoint2:CGPointMake(13.674, 7.226)];
	[Path19Path addCurveToPoint:CGPointMake(10.476, 4.921) controlPoint1:CGPointMake(12.534, 4.928) controlPoint2:CGPointMake(11.31, 5.762)];
	[Path19Path addCurveToPoint:CGPointMake(5.788, 0.519) controlPoint1:CGPointMake(9.028, 3.461) controlPoint2:CGPointMake(7.56, 1.412)];
	[Path19Path addCurveToPoint:CGPointMake(3.412, 0.001) controlPoint1:CGPointMake(5.091, 0.167) controlPoint2:CGPointMake(4.224, 0.373)];
	[Path19Path addLineToPoint:CGPointMake(3.412, 0.001)];
	[Path19Path closePath];
	[Path19Path moveToPoint:CGPointMake(3.412, 0.001)];
	
	return Path19Path;
}

- (UIBezierPath*)Path20Path{
	UIBezierPath *Path20Path = [UIBezierPath bezierPath];
	[Path20Path moveToPoint:CGPointMake(3.215, 0.381)];
	[Path20Path addCurveToPoint:CGPointMake(0.065, 4.637) controlPoint1:CGPointMake(3.215, 2.05) controlPoint2:CGPointMake(-0.535, 3.433)];
	[Path20Path addCurveToPoint:CGPointMake(2.251, 4.895) controlPoint1:CGPointMake(0.42, 5.35) controlPoint2:CGPointMake(1.767, 4.41)];
	[Path20Path addCurveToPoint:CGPointMake(3.729, 7.991) controlPoint1:CGPointMake(3.081, 5.728) controlPoint2:CGPointMake(3.052, 7.311)];
	[Path20Path addCurveToPoint:CGPointMake(5.079, 8.378) controlPoint1:CGPointMake(4.024, 8.287) controlPoint2:CGPointMake(4.808, 7.834)];
	[Path20Path addCurveToPoint:CGPointMake(6.365, 12.828) controlPoint1:CGPointMake(5.708, 9.64) controlPoint2:CGPointMake(4.009, 10.464)];
	[Path20Path addCurveToPoint:CGPointMake(7.136, 11.796) controlPoint1:CGPointMake(6.588, 13.051) controlPoint2:CGPointMake(7.08, 11.908)];
	[Path20Path addCurveToPoint:CGPointMake(8.808, 9.861) controlPoint1:CGPointMake(7.45, 11.167) controlPoint2:CGPointMake(8.232, 10.15)];
	[Path20Path addCurveToPoint:CGPointMake(12.858, 7.862) controlPoint1:CGPointMake(9.943, 9.292) controlPoint2:CGPointMake(12.097, 8.625)];
	[Path20Path addCurveToPoint:CGPointMake(13.565, 3.605) controlPoint1:CGPointMake(13.769, 6.948) controlPoint2:CGPointMake(13.051, 4.636)];
	[Path20Path addCurveToPoint:CGPointMake(15.172, 1.155) controlPoint1:CGPointMake(13.822, 3.088) controlPoint2:CGPointMake(15.575, 1.962)];
	[Path20Path addCurveToPoint:CGPointMake(12.022, 0.703) controlPoint1:CGPointMake(14.785, 0.377) controlPoint2:CGPointMake(12.87, 0.916)];
	[Path20Path addCurveToPoint:CGPointMake(3.215, 0.381) controlPoint1:CGPointMake(9.425, 0.052) controlPoint2:CGPointMake(5.8, -0.327)];
	[Path20Path addLineToPoint:CGPointMake(3.215, 0.381)];
	[Path20Path closePath];
	[Path20Path moveToPoint:CGPointMake(3.215, 0.381)];
	
	return Path20Path;
}

- (UIBezierPath*)Path21Path{
	UIBezierPath *Path21Path = [UIBezierPath bezierPath];
	[Path21Path moveToPoint:CGPointMake(19.137, 0.96)];
	[Path21Path addCurveToPoint:CGPointMake(24.356, 0.768) controlPoint1:CGPointMake(20.634, 0.553) controlPoint2:CGPointMake(23.061, 1.414)];
	[Path21Path addCurveToPoint:CGPointMake(25.967, 0.317) controlPoint1:CGPointMake(24.679, 0.607) controlPoint2:CGPointMake(25.633, 0.317)];
	[Path21Path addCurveToPoint:CGPointMake(28.158, 0.189) controlPoint1:CGPointMake(26.484, 0.317) controlPoint2:CGPointMake(27.667, -0.301)];
	[Path21Path addCurveToPoint:CGPointMake(27.9, 0.703) controlPoint1:CGPointMake(28.321, 0.351) controlPoint2:CGPointMake(27.921, 0.661)];
	[Path21Path addCurveToPoint:CGPointMake(25.967, 3.79) controlPoint1:CGPointMake(27.39, 1.722) controlPoint2:CGPointMake(26.477, 2.773)];
	[Path21Path addCurveToPoint:CGPointMake(24.743, 4.497) controlPoint1:CGPointMake(25.738, 4.247) controlPoint2:CGPointMake(24.743, 4.124)];
	[Path21Path addCurveToPoint:CGPointMake(24.808, 4.883) controlPoint1:CGPointMake(24.743, 4.627) controlPoint2:CGPointMake(24.755, 4.778)];
	[Path21Path addCurveToPoint:CGPointMake(28.738, 8.227) controlPoint1:CGPointMake(25.565, 6.396) controlPoint2:CGPointMake(27.567, 7.058)];
	[Path21Path addCurveToPoint:CGPointMake(28.673, 8.742) controlPoint1:CGPointMake(28.822, 8.311) controlPoint2:CGPointMake(28.707, 8.675)];
	[Path21Path addCurveToPoint:CGPointMake(28.996, 12.729) controlPoint1:CGPointMake(28.014, 10.058) controlPoint2:CGPointMake(28.51, 11.759)];
	[Path21Path addCurveToPoint:CGPointMake(31.251, 14.465) controlPoint1:CGPointMake(29.353, 13.442) controlPoint2:CGPointMake(30.66, 13.875)];
	[Path21Path addCurveToPoint:CGPointMake(31.444, 15.944) controlPoint1:CGPointMake(31.562, 14.776) controlPoint2:CGPointMake(31.135, 15.636)];
	[Path21Path addCurveToPoint:CGPointMake(32.153, 16.973) controlPoint1:CGPointMake(31.573, 16.073) controlPoint2:CGPointMake(32.353, 16.574)];
	[Path21Path addCurveToPoint:CGPointMake(31.831, 17.101) controlPoint1:CGPointMake(32.092, 17.095) controlPoint2:CGPointMake(31.964, 17.101)];
	[Path21Path addCurveToPoint:CGPointMake(30.413, 15.687) controlPoint1:CGPointMake(30.256, 17.101) controlPoint2:CGPointMake(30.87, 16.598)];
	[Path21Path addCurveToPoint:CGPointMake(28.416, 15.88) controlPoint1:CGPointMake(30.287, 15.435) controlPoint2:CGPointMake(28.544, 15.751)];
	[Path21Path addCurveToPoint:CGPointMake(29.576, 17.68) controlPoint1:CGPointMake(27.831, 16.464) controlPoint2:CGPointMake(29.995, 16.844)];
	[Path21Path addCurveToPoint:CGPointMake(27.127, 18.259) controlPoint1:CGPointMake(29.157, 18.515) controlPoint2:CGPointMake(27.681, 17.153)];
	[Path21Path addCurveToPoint:CGPointMake(25.194, 21.732) controlPoint1:CGPointMake(26.582, 19.347) controlPoint2:CGPointMake(26.074, 20.854)];
	[Path21Path addCurveToPoint:CGPointMake(24.228, 21.924) controlPoint1:CGPointMake(24.981, 21.945) controlPoint2:CGPointMake(24.463, 21.689)];
	[Path21Path addCurveToPoint:CGPointMake(24.292, 24.561) controlPoint1:CGPointMake(23.736, 22.415) controlPoint2:CGPointMake(24.794, 24.06)];
	[Path21Path addCurveToPoint:CGPointMake(23.905, 24.304) controlPoint1:CGPointMake(24.155, 24.698) controlPoint2:CGPointMake(23.944, 24.342)];
	[Path21Path addCurveToPoint:CGPointMake(22.424, 22.825) controlPoint1:CGPointMake(23.241, 23.641) controlPoint2:CGPointMake(23.441, 23.333)];
	[Path21Path addCurveToPoint:CGPointMake(21.328, 23.403) controlPoint1:CGPointMake(22.291, 22.759) controlPoint2:CGPointMake(21.574, 23.322)];
	[Path21Path addCurveToPoint:CGPointMake(19.202, 24.883) controlPoint1:CGPointMake(20.092, 23.815) controlPoint2:CGPointMake(19.202, 23.397)];
	[Path21Path addCurveToPoint:CGPointMake(19.846, 26.812) controlPoint1:CGPointMake(19.202, 25.447) controlPoint2:CGPointMake(19.323, 26.551)];
	[Path21Path addCurveToPoint:CGPointMake(21.779, 25.719) controlPoint1:CGPointMake(20.749, 27.262) controlPoint2:CGPointMake(20.746, 25.375)];
	[Path21Path addCurveToPoint:CGPointMake(22.295, 27.841) controlPoint1:CGPointMake(22.688, 26.021) controlPoint2:CGPointMake(21.968, 27.19)];
	[Path21Path addCurveToPoint:CGPointMake(23.648, 28.162) controlPoint1:CGPointMake(22.639, 28.528) controlPoint2:CGPointMake(23.205, 27.72)];
	[Path21Path addCurveToPoint:CGPointMake(23.519, 29.32) controlPoint1:CGPointMake(23.968, 28.482) controlPoint2:CGPointMake(23.169, 28.971)];
	[Path21Path addCurveToPoint:CGPointMake(25.323, 30.349) controlPoint1:CGPointMake(23.811, 29.611) controlPoint2:CGPointMake(25.64, 30.032)];
	[Path21Path addCurveToPoint:CGPointMake(22.424, 28.998) controlPoint1:CGPointMake(24.667, 31.003) controlPoint2:CGPointMake(22.607, 29.09)];
	[Path21Path addCurveToPoint:CGPointMake(17.784, 27.069) controlPoint1:CGPointMake(22.035, 28.805) controlPoint2:CGPointMake(17.821, 27.106)];
	[Path21Path addCurveToPoint:CGPointMake(16.045, 23.789) controlPoint1:CGPointMake(16.968, 26.254) controlPoint2:CGPointMake(16.978, 24.721)];
	[Path21Path addCurveToPoint:CGPointMake(15.4, 23.146) controlPoint1:CGPointMake(16.009, 23.753) controlPoint2:CGPointMake(15.493, 23.054)];
	[Path21Path addCurveToPoint:CGPointMake(15.658, 24.947) controlPoint1:CGPointMake(15.205, 23.341) controlPoint2:CGPointMake(15.895, 24.474)];
	[Path21Path addCurveToPoint:CGPointMake(13.274, 23.275) controlPoint1:CGPointMake(15.613, 25.037) controlPoint2:CGPointMake(13.49, 23.707)];
	[Path21Path addCurveToPoint:CGPointMake(10.761, 17.23) controlPoint1:CGPointMake(12.317, 21.364) controlPoint2:CGPointMake(11.953, 18.419)];
	[Path21Path addCurveToPoint:CGPointMake(11.148, 16.008) controlPoint1:CGPointMake(10.407, 16.877) controlPoint2:CGPointMake(11.464, 16.323)];
	[Path21Path addCurveToPoint:CGPointMake(9.924, 15.751) controlPoint1:CGPointMake(10.9, 15.761) controlPoint2:CGPointMake(10.155, 15.982)];
	[Path21Path addCurveToPoint:CGPointMake(5.607, 12.021) controlPoint1:CGPointMake(8.207, 14.037) controlPoint2:CGPointMake(8.083, 12.639)];
	[Path21Path addCurveToPoint:CGPointMake(2.127, 13.565) controlPoint1:CGPointMake(4.061, 11.636) controlPoint2:CGPointMake(2.506, 13.754)];
	[Path21Path addCurveToPoint:CGPointMake(0.194, 11.442) controlPoint1:CGPointMake(1.66, 13.332) controlPoint2:CGPointMake(0.383, 12.008)];
	[Path21Path addCurveToPoint:CGPointMake(0.774, 10.349) controlPoint1:CGPointMake(-0.003, 10.851) controlPoint2:CGPointMake(1.015, 10.831)];
	[Path21Path addCurveToPoint:CGPointMake(0.065, 8.291) controlPoint1:CGPointMake(0.54, 9.881) controlPoint2:CGPointMake(-0.226, 8.874)];
	[Path21Path addCurveToPoint:CGPointMake(0.452, 6.941) controlPoint1:CGPointMake(0.183, 8.057) controlPoint2:CGPointMake(0.21, 7.062)];
	[Path21Path addCurveToPoint:CGPointMake(8.57, 7.713) controlPoint1:CGPointMake(2.836, 5.751) controlPoint2:CGPointMake(6.071, 8.336)];
	[Path21Path addCurveToPoint:CGPointMake(12.436, 3.983) controlPoint1:CGPointMake(8.889, 7.633) controlPoint2:CGPointMake(11.935, 4.483)];
	[Path21Path addCurveToPoint:CGPointMake(14.692, 4.304) controlPoint1:CGPointMake(12.754, 3.666) controlPoint2:CGPointMake(14.367, 4.223)];
	[Path21Path addCurveToPoint:CGPointMake(19.975, 4.369) controlPoint1:CGPointMake(16.232, 4.689) controlPoint2:CGPointMake(18.747, 5.594)];
	[Path21Path addCurveToPoint:CGPointMake(19.137, 0.96) controlPoint1:CGPointMake(20.466, 3.879) controlPoint2:CGPointMake(19.137, 1.546)];
	[Path21Path closePath];
	[Path21Path moveToPoint:CGPointMake(22.419, 10.206)];
	[Path21Path addCurveToPoint:CGPointMake(21.333, 11.418) controlPoint1:CGPointMake(21.96, 10.359) controlPoint2:CGPointMake(21.568, 11.184)];
	[Path21Path addCurveToPoint:CGPointMake(19.609, 11.865) controlPoint1:CGPointMake(20.973, 11.778) controlPoint2:CGPointMake(19.948, 11.527)];
	[Path21Path addCurveToPoint:CGPointMake(19.609, 11.929) controlPoint1:CGPointMake(19.594, 11.88) controlPoint2:CGPointMake(19.609, 11.907)];
	[Path21Path addCurveToPoint:CGPointMake(23.121, 13.588) controlPoint1:CGPointMake(19.609, 12.654) controlPoint2:CGPointMake(22.504, 12.971)];
	[Path21Path addCurveToPoint:CGPointMake(24.526, 16.013) controlPoint1:CGPointMake(23.689, 14.156) controlPoint2:CGPointMake(23.729, 15.614)];
	[Path21Path addCurveToPoint:CGPointMake(24.781, 14.609) controlPoint1:CGPointMake(24.985, 16.242) controlPoint2:CGPointMake(24.673, 14.825)];
	[Path21Path addCurveToPoint:CGPointMake(25.547, 12.694) controlPoint1:CGPointMake(24.961, 14.249) controlPoint2:CGPointMake(25.678, 13.086)];
	[Path21Path addCurveToPoint:CGPointMake(25.419, 12.567) controlPoint1:CGPointMake(25.453, 12.413) controlPoint2:CGPointMake(25.54, 12.627)];
	[Path21Path addCurveToPoint:CGPointMake(22.419, 10.206) controlPoint1:CGPointMake(24.133, 11.924) controlPoint2:CGPointMake(23.554, 11.088)];
	[Path21Path closePath];
	[Path21Path moveToPoint:CGPointMake(22.419, 10.206)];
	
	return Path21Path;
}

- (UIBezierPath*)Path22Path{
	UIBezierPath *Path22Path = [UIBezierPath bezierPath];
	[Path22Path moveToPoint:CGPointMake(0, 1.302)];
	[Path22Path addCurveToPoint:CGPointMake(1.361, 2.656) controlPoint1:CGPointMake(1.019, 1.555) controlPoint2:CGPointMake(0.798, 2.096)];
	[Path22Path addCurveToPoint:CGPointMake(3.5, 2.914) controlPoint1:CGPointMake(1.423, 2.718) controlPoint2:CGPointMake(3.478, 2.936)];
	[Path22Path addCurveToPoint:CGPointMake(2.398, 1.753) controlPoint1:CGPointMake(3.916, 2.499) controlPoint2:CGPointMake(2.498, 1.953)];
	[Path22Path addCurveToPoint:CGPointMake(2.204, 0.011) controlPoint1:CGPointMake(2.276, 1.51) controlPoint2:CGPointMake(2.402, 0.11)];
	[Path22Path addCurveToPoint:CGPointMake(1.75, 1.044) controlPoint1:CGPointMake(1.937, -0.121) controlPoint2:CGPointMake(1.845, 0.949)];
	[Path22Path addCurveToPoint:CGPointMake(0, 1.302) controlPoint1:CGPointMake(1.619, 1.174) controlPoint2:CGPointMake(0.185, 1.251)];
	[Path22Path addLineToPoint:CGPointMake(0, 1.302)];
	[Path22Path closePath];
	[Path22Path moveToPoint:CGPointMake(0, 1.302)];
	
	return Path22Path;
}

- (UIBezierPath*)Path23Path{
	UIBezierPath *Path23Path = [UIBezierPath bezierPath];
	[Path23Path moveToPoint:CGPointMake(1.141, 2.518)];
	[Path23Path addCurveToPoint:CGPointMake(0.132, 0.048) controlPoint1:CGPointMake(0.917, 2.163) controlPoint2:CGPointMake(-0.418, 0.631)];
	[Path23Path addCurveToPoint:CGPointMake(0.51, 0.315) controlPoint1:CGPointMake(0.311, -0.141) controlPoint2:CGPointMake(0.48, 0.284)];
	[Path23Path addCurveToPoint:CGPointMake(1.141, 2.518) controlPoint1:CGPointMake(1.013, 0.848) controlPoint2:CGPointMake(1.642, 1.836)];
	[Path23Path addLineToPoint:CGPointMake(1.141, 2.518)];
	[Path23Path closePath];
	[Path23Path moveToPoint:CGPointMake(1.141, 2.518)];
	
	return Path23Path;
}

- (UIBezierPath*)Path24Path{
	UIBezierPath *Path24Path = [UIBezierPath bezierPath];
	[Path24Path moveToPoint:CGPointMake(0.009, 0.395)];
	[Path24Path addCurveToPoint:CGPointMake(0.216, 0) controlPoint1:CGPointMake(-0.031, 0.243) controlPoint2:CGPointMake(0.073, 0)];
	[Path24Path addCurveToPoint:CGPointMake(0.342, 0.493) controlPoint1:CGPointMake(0.358, 0) controlPoint2:CGPointMake(0.474, 0.441)];
	[Path24Path addCurveToPoint:CGPointMake(0.009, 0.395) controlPoint1:CGPointMake(0.21, 0.545) controlPoint2:CGPointMake(0.049, 0.547)];
	[Path24Path closePath];
	[Path24Path moveToPoint:CGPointMake(0.009, 0.395)];
	
	return Path24Path;
}


@end
