//
//  MapDisplay.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "MapDisplay.h"
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import "MapPin.h"
#import "Config.h"
#import "LocationObject.h"
#import "MapPinView.h"
#import "CMLocationObject.h"


@implementation MapDisplay
@synthesize delegate;
//@synthesize overlayButton;
@synthesize map;

- (id)initWithFrame:(CGRect)frame withDelegate:(id)del
{
    self = [super initWithFrame:frame];
    if (self) {
        heightValue = frame.size.height;
        self.delegate = del;
        
        spanValue = 0.095;
        hasObserver = YES;
       
        
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor darkGrayColor];
        
        map = [[MKMapView alloc] initWithFrame:frame];
        map.delegate = self;
        map.showsUserLocation = YES;
        
        [self addSubview:map];
        
        MKCoordinateRegion region;
        region.center = map.userLocation.coordinate;
        
        MKCoordinateSpan span;
        span.latitudeDelta  = spanValue;
        span.longitudeDelta = spanValue;
        region.span = span;
        
        [map setRegion:region animated:YES];

        
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(locationChanged)
                                                     name:kLOCATION_UPDATE
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(mapPinUpdate:)
                                                     name:kUPDATE_PINS
                                                   object:nil];
        
    //    overlayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //    overlayButton.frame = frame;
    //    [overlayButton addTarget:self action:@selector(overlayBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
        
        UIPanGestureRecognizer* panRec = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didDragMap:)];
        [panRec setDelegate:self];
        [map addGestureRecognizer:panRec];
        
        UIPinchGestureRecognizer *pinchRec = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(didDragMap:)];
        [pinchRec setDelegate:self];
        [map addGestureRecognizer:pinchRec];
        
   //     [self addSubview:overlayButton];
     //   [self zoomToUserLocation:self.map.userLocation];

        
        [self locationChanged];
     //   [delegate zoomToUserLocation:userLocation];
       
    }
    return self;
}


- (void) setSpanValue:(CGFloat)cg
{
    //NSLog(@"change span value to :%f",cg);
    spanValue = cg;
}

- (void) locationChanged
{
    if (hasObserver) {
        
        
    }
}

- (void) mapPinUpdate:(NSNotification *)notification
{
    //[self removeAllPinsButUserLocation];
    
    MapPinView *annotationView;
    
    NSMutableArray *userArray = [[notification userInfo] valueForKey:@"index"];
    
    //NSLog(@"mapDisplay : %@",[userArray description]);
    for (int i = 0; i<[userArray count]; i++) {
        
   //     EsUserVariable *locationVariable = [userArray objectAtIndex:i];
   //     EsObject *obj = locationVariable.value;
        
        
  //      float userLatitude = [obj floatWithKey:@"currentLocationLatitude"];
   //     float userLongitude = [obj floatWithKey:@"currentLocationLongitude"];
   //     NSString *userName = [obj stringWithKey:@"name"];
   //     NSString *userSurname = [obj stringWithKey:@"surname"];
   //     NSString *userFacebookID = [obj stringWithKey:@"facebookID"];
        
   //     NSLog(@"%@",userName);
   //     NSLog(@"%@",userSurname);
        
   //     CGFloat lat = userLatitude;
   //     CGFloat lng = userLongitude;
   //     CLLocationCoordinate2D newCoord = { lat, lng };
   //     NSString *userFullname = [NSString stringWithFormat:@"%@ %@", userName, userSurname];
   //     MapPin* annotation = [[MapPin alloc] initWithCoordinate:newCoord withTitle:userFullname];
        
   //     [map addAnnotation:annotation];
    }
}

- (void)removeAllPinsButUserLocation
{
    id userLocation = [map userLocation];
    NSMutableArray *pins = [[NSMutableArray alloc] initWithArray:[map annotations]];
    if ( userLocation != nil ) {
        [pins removeObject:userLocation]; // avoid removing user location off the map
    }
    
    [map removeAnnotations:pins];
    pins = nil;
}

- (void) overlayBtnTapped:(id)sender
{
    [delegate calledFromOverlayButton];
}
-(void) zoomToUserLocation: (MKUserLocation *)userLocation {
    if (!userLocation)
        return;
    
 /*   MKCoordinateRegion region;
    region.center = userLocation.location.coordinate;
    region.span = MKCoordinateSpanMake(2.0, 2.0); //Zoom distance
    region = [self.map regionThatFits:region];
    [self.map setRegion:region animated:YES];
  */
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    static NSString *const kAnnotationReuseIdentifier = @"MapPinView";
    
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    MapPinView *annotationView;
    
    if ([annotation isKindOfClass:[MapPin class]]) {
        //NSLog(@"MapPin Class");
        
        annotationView = (MapPinView *)[mapView dequeueReusableAnnotationViewWithIdentifier:kAnnotationReuseIdentifier];
        if (annotationView == nil) {
            annotationView = [[MapPinView alloc] initWithAnnotation:annotation];
            annotationView.enabled = YES;
            //annotationView.pinColor = MKPinAnnotationColorPurple;
            //LocationObject *locPin = (LocationObject *)pin.PinLocation;
           // [annotationView setFbID:u.fbID];
            
            
            //eger bunun icinde tum pinleri olusturucaksak
            
      /*
            for (int i = 0; i < APPDELEGATE.cmLocations.count; i++)
            {
                CMLocationObject *cm = (CMLocationObject*)[APPDELEGATE.cmLocations objectAtIndex:i];
                MapPin *pin = (MapPin *)annotation;
                [pin setCoordinate:CLLocationCoordinate2DMake(cm.locLat, cm.locLong)];
            }
            
*/
            annotationView.canShowCallout = NO;
            annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeInfoLight];
        }
    }
    
    return annotationView;
}
- (void) updateViewSize:(CGRect)frame animated:(BOOL)bl
{
    if (bl) {
        [UIView beginAnimations:@"Animation" context:nil];
        [UIView setAnimationDuration:kANIMATION_DURATION];
        [UIView setAnimationBeginsFromCurrentState:YES];
        [UIView setAnimationDelegate:self];
      //  [UIView setAnimationDidStopSelector:@selector(resizeAnimationCompleted)];
    }
    
    self.frame = frame;
    map.frame = frame;
   // overlayButton.frame = frame;
    
    if (bl) {
        [UIView commitAnimations];
    }
}

- (void) setInteractive:(BOOL)bl
{
//   overlayButton.hidden = !bl;
    
    [delegate tappedFromMap];
}
/*
- (void) resizeAnimationCompleted
{
    if (self.frame.size.height>heightValue)
    {
        hasObserver = NO;
 //       overlayButton.enabled = NO;
    }else{
        hasObserver = YES;
  //      overlayButton.enabled = YES;
    }
}
*/
#pragma mark MAP DELEGATE FUNCTIONS

-(void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
    
}


- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated
{
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    NSLog(@"location changed map display");
    
    if (hasObserver) {
        hasObserver = NO;
        MKCoordinateRegion region;
        region.center = userLocation.location.coordinate;
        region.span = MKCoordinateSpanMake(2.0, 2.0); //Zoom distance
        region = [self.map regionThatFits:region];
        [self.map setRegion:region animated:YES];
        

    }
        //[map setCenterCoordinate:userLocation.coordinate animated:NO];
    /*for(int i = 0; i < 10; i++)
     {
     CGFloat latDelta = rand()*.035/RAND_MAX -.02;
     CGFloat longDelta = rand()*.03/RAND_MAX -.015;
     
     CLLocationCoordinate2D newCoord = { userLocation.coordinate.latitude + latDelta, userLocation.coordinate.longitude + longDelta };
     MapPin* annotation = [[MapPin alloc] initWithCoordinate:newCoord];
     [mapView addAnnotation:annotation];
     }*/
}

#pragma mark gesture recognizer

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (void)didDragMap:(UIGestureRecognizer*)gestureRecognizer {
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan){
        hasObserver = NO;
    }
}


@end
