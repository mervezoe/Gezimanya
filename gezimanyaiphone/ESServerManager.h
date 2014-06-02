//
//  ESServerManager.h
//  Motty
//
//  Created by Gurkan Tumer on 08/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ElectroServer.h"

@interface ESServerManager : NSObject
{
//    ElectroServer *server;
//    EsRoom* locationCheck;
    
    BOOL isConnectedToLocationRoom;
}

//@property (nonatomic, retain) ElectroServer *server;
//@property (nonatomic, retain) EsRoom *locationCheck;

+ (id)sharedManager;

- (void) connect;
- (void) sendToServer;
- (void) sendLocationToServer;
//
- (int) getUserCount;
//
- (void) disconnect;

@end
