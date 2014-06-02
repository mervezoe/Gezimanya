//
//  MapPin.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>
#import "LocationObject.h"
#import "CMLocationObject.h"

@class LocationObject;

@interface MapPin : NSObject<MKAnnotation>
{
    CLLocationCoordinate2D _coordinate;
    NSString *title;
    NSString *subtitle;
    CMLocationObject *PinLocation;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, retain) CMLocationObject *PinLocation;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate withData:(NSMutableDictionary *)dic;

//- (IBAction)getDataFromJson:(id)sender;

@end
