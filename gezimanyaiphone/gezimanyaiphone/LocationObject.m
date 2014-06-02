//
//  LocationObject.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 10/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "LocationObject.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "Config.h"
#import "CMLocationObject.h"

@implementation LocationObject
@synthesize Locid,LocImgLink,LocLat,LocLong,LocTitle;


- (void) setTempData
{
    dispatch_async(kBG_QUEUE, ^{
        NSData* data = [NSData dataWithContentsOfURL:kLOCATION_URL];
        [self performSelectorOnMainThread:@selector(setData:)
                               withObject:data waitUntilDone:YES];
    });
}


-(void)setData:(NSDictionary*)loc
{
    CMLocationObject *locationObj = [[CMLocationObject alloc] init];
    
    LocTitle = locationObj.locTitle;
   // LocLat = locationObj.locLat;
   // LocLong = locationObj.locLong;
    Locid = locationObj.locId;
    LocImgLink = locationObj.locLink;
    
}

@end
