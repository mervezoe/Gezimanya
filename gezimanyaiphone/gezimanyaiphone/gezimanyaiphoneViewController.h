//
//  gezimanyaiphoneViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 20/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+MMDrawerController.h"
#import <Parse/Parse.h>
#import "MapDisplay.h"
#import "LogViewController.h"
#import "BaseViewController.h"

@interface gezimanyaiphoneViewController : BaseViewController <MKMapViewDelegate, MapDisplayDelegate> {
    MapDisplay *mapView;
    UIView *loginView;
    UIWindow *loginWindow;
    BOOL LoginOrNot;
    LogViewController *LogDelegate;
    UIButton *login;
    
}
@property (nonatomic,retain) MapDisplay *mapView;
@property (nonatomic,retain) LogViewController *LogDelegate;
@property (nonatomic,retain) UIView *loginView;
@property (nonatomic,retain) UIWindow *loginWindow;
@property (nonatomic,retain) UIButton *login;

@end
