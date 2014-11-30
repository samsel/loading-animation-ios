loading-animation-ios
=====================

_a simple overlay type loading animation for ios apps_


##### How Does It Work?

```objective-c
/* Add LoadingAnimationView.h, 
	   LoadingAnimationView.m and
       LoadingAnimationView.xib 
  to your project. then, 
  in any of your Viewcontroller
*/

#import "LoadingAnimationView.h"

/* to show the loading animation view */
LoadingAnimationView *animationView = [LoadingAnimationView new];
[animationView showWithImage:[UIImage imageNamed:@"myImageName"] 
    						andMessage:@"myMessage.." 
    						inView:self.view];

/* to hide the loading animation view */
[animationView hide];
```

##### Example Video
https://www.youtube.com/watch?v=Cm2wifFYw8M

##### Sample Usage
https://github.com/samsel/loading-animation-ios/tree/master/example/example

##### ToDo
* Publish to cocoapods