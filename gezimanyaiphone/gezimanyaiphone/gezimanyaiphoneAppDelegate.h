//
//  gezimanyaiphoneAppDelegate.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 20/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MMDrawerController;


@interface gezimanyaiphoneAppDelegate : UIResponder <UIApplicationDelegate>

{
    NSMutableArray *dataArray;
    MMDrawerController * drawerController;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,retain) NSMutableArray *dataArray;
@property (nonatomic,retain) MMDrawerController *drawerController;

@property (nonatomic, strong) NSMutableArray *cmLocations;

-(void)openMenu;
-(void)loadData;
-(void) showLoginScreen: (int) step;
- (void) removeLoginScreen;
-(void) showRegisterScreen;
@end
