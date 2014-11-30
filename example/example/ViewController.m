//
//  ViewController.m
//  example
//
//  Created by Sam Selvanathan on 11/2/14.
//
//

#import "ViewController.h"
#import "LoadingAnimationView.h"

int const kLoadingTime = 5;
NSString* const kMessage = @"loading your data...";
NSString* const kImageName = @"icon";

@interface ViewController ()

@property (nonatomic, strong) LoadingAnimationView *loadingAnimationView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:84.0/255.0 green:199.0/255.0 blue:252.0/255.0 alpha:1.0];
}

- (IBAction)startLoadingAnimationViewDemo:(id)sender
{
    if (_loadingAnimationView == nil) {
        _loadingAnimationView = [LoadingAnimationView new];
    }
    [NSTimer scheduledTimerWithTimeInterval:kLoadingTime target:self selector:@selector(stopLoadingAnimationViewDemo) userInfo:nil repeats:NO];
    [_loadingAnimationView showWithImage:[UIImage imageNamed:kImageName] andMessage:kMessage inView:self.view];
}

- (void)stopLoadingAnimationViewDemo
{
    [_loadingAnimationView hide];
}


@end
