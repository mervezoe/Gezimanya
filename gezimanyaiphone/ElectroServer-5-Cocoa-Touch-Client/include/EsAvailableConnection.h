//
//  EsAvailableConnection.h
//  cocoa-touch
//
//  Created by Jason von Nieda on 7/20/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EsAvailableConnection : NSObject {

}

@property(retain) NSString* host;
@property int port;
@property int transportType;
@property(retain) NSString* serverId;

@end
