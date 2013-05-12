#import "UploadTulpaViewController.h"

@implementation UploadTulpaViewController
@synthesize background;


- (void)viewDidLoad
{
	[background setImage:[UIImage imageNamed:@"b1.png"]];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event { 
	
	if (!uploaded)
    {
		uploaded = YES;
        [background setImage:[UIImage imageNamed:@"b12.png"]];
        
        // load all the frames of our animation
        background.animationImages = [NSArray arrayWithObjects:   
                                      [UIImage imageNamed:@"b1.png"],
                                      [UIImage imageNamed:@"b2.png"],
                                      [UIImage imageNamed:@"b3.png"],
                                      [UIImage imageNamed:@"b4.png"],
                                      [UIImage imageNamed:@"b5.png"],
                                      [UIImage imageNamed:@"b6.png"],
                                      [UIImage imageNamed:@"b7.png"],
                                      [UIImage imageNamed:@"b8.png"], 
									  [UIImage imageNamed:@"b9.png"], 
									  [UIImage imageNamed:@"b10.png"], 
									  [UIImage imageNamed:@"b11.png"], 
									  [UIImage imageNamed:@"b12.png"],
									  nil];
        
        // all frames will execute in 1.75 seconds
        background.animationDuration = .5;
        // repeat the annimation forever
        background.animationRepeatCount = 1;
        // start animating
        [background startAnimating];

        numofVibs = 1; 
        // Create a time for the thread  
        timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(vibrate) userInfo:nil repeats:YES];  
        
        // Add the timer to the run loop  
        [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];  
        [[NSRunLoop currentRunLoop] run];  
        
    }
    else
    {
		uploaded = NO;
        AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);
        
        
        // load all the frames of our animation
        [background setImage:[UIImage imageNamed:@"b1.png"]];
        
        background.animationImages = [NSArray arrayWithObjects:   
									  [UIImage imageNamed:@"b12.png"],
                                      [UIImage imageNamed:@"b11.png"],
                                      [UIImage imageNamed:@"b10.png"],
                                      [UIImage imageNamed:@"b9.png"],
                                      [UIImage imageNamed:@"b8.png"],
                                      [UIImage imageNamed:@"b7.png"],
                                      [UIImage imageNamed:@"b6.png"],
                                      [UIImage imageNamed:@"b5.png"], 
									  [UIImage imageNamed:@"b4.png"], 
									  [UIImage imageNamed:@"b3.png"], 
									  [UIImage imageNamed:@"b2.png"], 
									  [UIImage imageNamed:@"b1.png"], 
									  nil];
        
        // all frames will execute in 1.75 seconds
        background.animationDuration = 1;
        // repeat the annimation forever
        background.animationRepeatCount = 1;
        
        // start animating
        [background startAnimating];
    } 	
}

-(void) vibrate {
    if (numofVibs < 5) {
        AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);
        [NSThread sleepForTimeInterval:1];
        numofVibs++;
    }
    else {
        timer = nil;    
    }
}
@end
