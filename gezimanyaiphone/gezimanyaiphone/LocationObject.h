//
//  LocationObject.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 10/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationObject : NSObject
{
    NSString *Locid;
    NSString *LocTitle;
    NSString *LocLat;
    NSString *LocLong;
    NSString *LocImgLink;
    
}

@property (nonatomic,retain) NSString *Locid;
@property (nonatomic,retain)NSString *LocTitle;
@property (nonatomic,retain)NSString *LocLat;
@property (nonatomic,retain)NSString *LocLong;
@property (nonatomic,retain)NSString *LocImgLink;

-(void)setData:(NSData*)loc;

@end
