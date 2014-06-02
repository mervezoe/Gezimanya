//
//  MapPinView.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 09/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <MapKit/MapKit.h>


@interface MapPinView : MKAnnotationView
{
    NSString *fbID;
    CGRect selfFrame;
    id<MKAnnotation> annotation;
}

@property (nonatomic, retain) NSString *fbID;

- (id)initWithAnnotation:(id ) nt;

@end
