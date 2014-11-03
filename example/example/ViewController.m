//
//  ViewController.m
//  example
//
//  Created by Sam Selvanathan on 11/2/14.
//
//

#import "ViewController.h"
#import "LoadingAnimationView.h"

@interface ViewController ()

@property (nonatomic, strong) LoadingAnimationView *loadingAnimationView;

@end

@implementation ViewController

- (IBAction)startLoadingAnimationViewDemo:(id)sender
{
    if (_loadingAnimationView == nil) {
        _loadingAnimationView = [LoadingAnimationView new];
    }
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(stopLoadingAnimationViewDemo) userInfo:nil repeats:NO];
    [_loadingAnimationView showWithImage:[UIImage imageNamed:@"coffee"] andMessage:@"loading from server..." inView:self.view];
}

- (void)stopLoadingAnimationViewDemo
{
    [_loadingAnimationView hide];
}


@end
