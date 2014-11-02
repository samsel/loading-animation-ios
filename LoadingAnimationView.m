//
//  LoadingAnimationView.m
//  example
//
//  Created by Sam Selvanathan on 11/2/14.
//
//

#import "LoadingAnimationView.h"
#import <QuartzCore/QuartzCore.h>

static NSString *const animationKey = @"loading.animation.key";

@interface LoadingAnimationView ()

@property (nonatomic, weak) IBOutlet UIView *animationView;
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;

@end

@implementation LoadingAnimationView

- (id)init
{
    NSArray *viewArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    
    return [viewArray objectAtIndex:0];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.layer.backgroundColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0] CGColor];
    _animationView.layer.backgroundColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3] CGColor];
    _animationView.layer.cornerRadius = 3.0;
}

- (void)showWithImage:(UIImage *)image andMessage:(NSString *)message inView:(UIView *)view
{
    _messageLabel.text = message;
    [self startAnimation];
    [view addSubview:self];
}

- (void)hide
{
    [self stopAnimation];
}

- (void)startAnimation
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    NSArray *time = @[@0.0,
                       @0.25,
                       @0.45,
                       @0.90,
                       @1.0];
    
    NSArray *angle = @[@0,
                        @(-M_PI * 30.0/180.0),
                        @(-M_PI * 30.0/180.0),
                        @(M_PI),
                        @(M_PI)];
    
    NSArray *function = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],
                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                       [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];

    
    [animation setKeyTimes:time];
        [animation setValues:angle];
    [animation setTimingFunctions:function];
    animation.duration = 1.5;
    animation.repeatCount = HUGE_VALF;
    [_animationView.layer addAnimation:animation forKey:animationKey];
}

- (void)stopAnimation
{
    [_animationView.layer removeAnimationForKey:animationKey];
}



@end
