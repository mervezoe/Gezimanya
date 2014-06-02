//
//  MapPin.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>
#import "MapPin.h"
#import "LocationObject.h"
#import "CMLocationObject.h"

@implementation MapPin

@synthesize coordinate = _coordinate;
@synthesize title = _title;
@synthesize subtitle;
@synthesize PinLocation;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if (self != nil)
    {
         _coordinate = coordinate;
    }
    return self;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate withData:(NSMutableDictionary *)dic
{
    self = [self initWithCoordinate:coordinate];
    
    if (self!=nil) {
        PinLocation = (CMLocationObject *)[dic objectForKey:@"loc"];
        
        _title = [NSString stringWithFormat:@"%@",PinLocation.locTitle];
    }
    
    return self;
}

/*
- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    NSArray* latestLoans = [json objectForKey:@"loans"]; //2
    
    NSLog(@"loans: %@", latestLoans); //3
}
*/
/*
- (IBAction)getDataFromJson:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.gezimanya.com/json/lokasyonlar"];
    
    NSData *jsonData = [NSData dataWithContentsOfURL:url];
    
    
    if(jsonData != nil)
    {
        NSError *error = nil;
        id result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        if (error == nil)
            NSLog(@"%@", result);
    }
}
 */

@end