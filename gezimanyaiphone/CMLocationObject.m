//
//  CMLocationObject.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 16/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "CMLocationObject.h"

@implementation CMLocationObject
@synthesize locLink,locLat,locTitle,locLong,locId;

- (id)initWithDict:(NSDictionary*)dict
{
    if ((self = [super init]))
    {
        [self setLocId:[dict objectForKey:@"id"]];
        [self setLocLong:[[dict objectForKey:@"longitude"] floatValue]];
        [self setLocLat:[[dict objectForKey:@"latitude"] floatValue]];
        [self setLocTitle:[dict objectForKey:@"title"]];
        [self setLocLink:[dict objectForKey:@"link"]];
    }
    return self;
}

- (void)debugLocation
{
    NSLog(@"id : %@, long : %f, lat : %f, title: %@, link : %@", self.locId, self.locLong, self.locLat, self.locTitle, self.locLink);
}


@end
