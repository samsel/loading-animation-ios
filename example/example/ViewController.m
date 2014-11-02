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

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showLoadingAnimationView];
    
}

- (void)showLoadingAnimationView
{
    _loadingAnimationView = [LoadingAnimationView new];
    [_loadingAnimationView showWithImage:nil andMessage:@"loading from server..." inView:self.view];
}


@end
