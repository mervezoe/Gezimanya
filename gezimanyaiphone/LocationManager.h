//
//  EMMLocationManager.h
//  EarnMyMeal
//
//  Created by Gurkan Tumer on 10/23/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

// protocol for sending location updates to another view controller
@protocol LocationManagerDelegate

@required

- (void)locationUpdate:(CLLocation*)location;

@end

@interface LocationManager : NSObject <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) CLLocation *location;
@property (nonatomic, weak) id  delegate;

+ (id)sharedManager;
- (void) startLocationLog;
- (void) stopLocationLog;
- (NSString*)getCurrentLocation;
- (float) getCurrentLocationLatitude;
- (float) getCurrentLocationLongitude;

@end
