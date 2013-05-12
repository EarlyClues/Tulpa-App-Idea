//
//  TulpasAppDelegate.h
//  Tulpas
//
//  Created by RICHARD STALLMANS RIDER on 5/10/2013.
//  EARLY CLUES LLC 2013. All rights waived.
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

