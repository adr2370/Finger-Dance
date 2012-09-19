//
//  FingerDanceAppDelegate.h
//  FingerDance
//
//  Created by Alexander Ramirez on 5/27/10.
//  Copyright Troy High School 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FingerDanceViewController;

@interface FingerDanceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FingerDanceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FingerDanceViewController *viewController;

@end

