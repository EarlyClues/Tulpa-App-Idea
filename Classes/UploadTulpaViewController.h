//
//  iPhoneStreamingPlayerViewController.h
//  iPhoneStreamingPlayer
//
//  Created by Matt Gallagher on 28/10/08.
//  Copyright Matt Gallagher 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <AudioToolbox/AudioToolbox.h>


@interface UploadTulpaViewController : UIViewController
{
	BOOL uploaded;
	IBOutlet UIImageView *background;
    NSTimer *timer;
    int numofVibs;
}

@property (nonatomic, retain)IBOutlet UIImageView *background;

@end

