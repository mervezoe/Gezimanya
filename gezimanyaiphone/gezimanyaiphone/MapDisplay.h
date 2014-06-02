//
//  MapDisplay.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@protocol MapDisplayDelegate;

@interface MapDisplay : UIView<MKMapViewDelegate,UIGestureRecognizerDelegate>
{
 //   UIButton *overlayButton;
    MKMapView *map;
    id<MapDisplayDelegate> delegate;
    CGFloat heightValue;
    CGFloat spanValue;
    
    BOOL hasObserver;
}

@property (nonatomic, retain) id<MapDisplayDelegate> delegate;
//@property (nonatomic, retain) UIButton *overlayButton;
@property (nonatomic, retain) MKMapView *map;

- (void) overlayBtnTapped:(id)sender;
- (id) initWithFrame:(CGRect)frame withDelegate:(id)del;
- (void) updateViewSize:(CGRect)frame animated:(BOOL)bl;
- (void) setInteractive:(BOOL)bl;
- (void) setSpanValue:(CGFloat)cg;
- (void) locationChanged;
-(void) zoomToUserLocation: (MKUserLocation *)userLocation;


@end

@protocol MapDisplayDelegate <NSObject>

- (void) tappedFromMap;


@optional
- (void) calledFromOverlayButton;

@end
