//
//  KifDragTestAppDelegate.h
//  KifDragTest
//
//  Created by Kenn Brodhagen on 9/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KifDragTestViewController;

@interface KifDragTestAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet KifDragTestViewController *viewController;

@end
