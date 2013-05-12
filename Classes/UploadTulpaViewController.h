//  Created by RICHARD STALLMANS RIDER on 5/10/2013.
//  EARLY CLUES LLC 2013. All rights waived.
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

