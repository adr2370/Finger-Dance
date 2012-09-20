//
//  FingerDanceAppDelegate.m
//  FingerDance
//
//  Created by Alexander Ramirez on 5/27/10.
//  Copyright Troy High School 2010. All rights reserved.
//

#import "FingerDanceAppDelegate.h"
#import "FingerDanceViewController.h"

@implementation FingerDanceAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
