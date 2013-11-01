//
//  KTAppDelegate.h
//  KTCollectionView
//
//  Created by Krunal T Tailor on 31/10/13.
//  Copyright (c) 2013 Krunal T Tailor. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  KTViewController;

@interface KTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) KTViewController *viewController;

@end
