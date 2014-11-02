//
//  LoadingAnimationView.m
//  example
//
//  Created by Sam Selvanathan on 11/2/14.
//
//

#import "LoadingAnimationView.h"
#import <QuartzCore/QuartzCore.h>

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

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.layer.backgroundColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.1] CGColor];
    _animationView.layer.backgroundColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3] CGColor];
    _animationView.layer.cornerRadius = 3.0;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setNeedsLayout];
}

- (void)showWithImage:(UIImage *)image andMessage:(NSString *)message inView:(UIView *)view
{
    _messageLabel.text = message;
    [view addSubview:self];
}

- (void)showInView:(UIView *)view
{
    
}

- (void)hide
{
    
}

@end
