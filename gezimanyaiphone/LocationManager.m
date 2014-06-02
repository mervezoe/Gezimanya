//
//  EMMLocationManager.m
//  EarnMyMeal
//
//  Created by Gurkan Tumer on 10/23/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import "LocationManager.h"
#import "Config.h"

//static EMMLocationManager *sharedCLDelegate = nil;

@implementation LocationManager

@synthesize locationManager, location, delegate;

+ (id)sharedManager
{
    static LocationManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}


- (id)init {
    if (self = [super init]) {
    
        //NSLog(@"Location Manager inited");
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        //self.locationManager.distanceFilter = 5;
        [self.locationManager startMonitoringSignificantLocationChanges];
        self.locationManager.pausesLocationUpdatesAutomatically = NO;
    }
    return self;
}

- (void) startLocationLog
{
    //NSLog(@"log started");
    //[self.locationManager startUpdatingLocation];
}

- (void) stopLocationLog
{
    //NSLog(@"log stopped");
    //[self.locationManager stopUpdatingLocation];
}

#pragma mark CLLocationManagerDelegate Methods
- (void)locationManager:(CLLocationManager*)manager
    didUpdateToLocation:(CLLocation*)newLocation
           fromLocation:(CLLocation*)oldLocation
{
    /*CLLocationDistance distance = [newLocation distanceFromLocation:oldLocation];
    if (distance<1) {
    }else{
    }*/
    NSLog(@"location changed location manager");
    location = newLocation;
    [[NSNotificationCenter defaultCenter] postNotificationName:kLOCATION_UPDATE object:self];
}

- (float) getCurrentLocationLatitude
{
    location = self.locationManager.location;
    return location.coordinate.latitude;
}

- (float) getCurrentLocationLongitude
{
    location = self.locationManager.location;
    return location.coordinate.longitude;
}

- (NSString*) getCurrentLocation
{
    NSString *locationString = [NSString stringWithFormat:@"%f_%f",location.coordinate.latitude,location.coordinate.longitude];
    //NSLog(@"location getCurrentLocation : %@", locationString);
    return locationString;
}

- (void)locationManager:(CLLocationManager*)manager
       didFailWithError:(NSError*)error
{
    [self.locationManager stopUpdatingLocation];
    NSLog(@"hello fail");
    
}


@end
