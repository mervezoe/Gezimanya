//
//  CMLocationObject.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 16/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMLocationObject : NSObject

@property (nonatomic, strong) NSString *locId;
@property (nonatomic, assign) float locLong;
@property (nonatomic, assign) float locLat;
@property (nonatomic, strong) NSString *locTitle;
@property (nonatomic, strong) NSString *locLink;

- (id)initWithDict:(NSDictionary*)dict;
- (void)debugLocation;

@end
