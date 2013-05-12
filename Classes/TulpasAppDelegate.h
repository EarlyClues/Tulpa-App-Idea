//
//  TulpasAppDelegate.h
//  Tulpas
//
//  Created by Garrett Kelly on 7/5/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UploadTulpaViewController.h"

@interface TulpasAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UploadTulpaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UploadTulpaViewController *viewController;

@end

