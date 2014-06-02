//
//  ESServerManager.m
//  Motty
//
//  Created by Gurkan Tumer on 08/11/13.
//  Copyright (c) 2013 Studio Nord. All rights reserved.
//

#import "ESServerManager.h"
#import "ElectroServer.h"
#import "UserManager.h"
#import "LocationManager.h"
#import "Config.h"

@implementation ESServerManager

@synthesize server;
@synthesize locationCheck;

+ (id)sharedManager
{
    static ESServerManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (id) init {
    self = [super init];
    if (self) {
        isConnectedToLocationRoom = NO;
        server = [[ElectroServer alloc] init];
        
        [server.engine addEventListenerWithTarget:self action:@selector(onConnectionResponse:) eventIdentifier:EsMessageType_ConnectionResponse];
        [server.engine addEventListenerWithTarget:self action:@selector(onLoginResponse:) eventIdentifier:EsMessageType_LoginResponse];
        [server.engine addEventListenerWithTarget:self action:@selector(onPublicMessageEvent:) eventIdentifier:EsMessageType_PublicMessageEvent];
        [server.engine addEventListenerWithTarget:self action:@selector(onRoomUserUpdateEvent:) eventIdentifier:EsMessageType_UserUpdateEvent];
        [server.engine addEventListenerWithTarget:self action:@selector(onUserVariableUpdateEvent:) eventIdentifier:EsMessageType_UserVariableUpdateEvent];
        
        [server.engine addEventListenerWithTarget:self action:@selector(onLeaveRoomEvent:) eventIdentifier:EsMessageType_LeaveRoomRequest];
        [server.engine addEventListenerWithTarget:self action:@selector(onLeaveRoomResponse:) eventIdentifier:EsMessageType_LeaveRoomEvent];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(sendLocationToServer)
                                                     name:kLOCATION_UPDATE
                                                   object:nil];
        
    }
    return self;
}

- (void) connect
{
    if (!isConnectedToLocationRoom) {
        [server loadAndConnect];
    }else{
        [self updateUserArray];
    }
}

- (void) disconnect
{
    
}

- (void)onConnectionResponse:(EsConnectionResponse*)event {
	if (event.successful) {
        //NSLog(@"connection response");
		[self submitLoginHandler];
	}
}

- (void)onLoginResponse:(EsLoginResponse*)event {
	//NSLog(@"Logged in: %@", event.successful ? @"true" : @"false");
	
	[server.engine addEventListenerWithTarget:self action:@selector(onJoinRoomEvent:) eventIdentifier:EsMessageType_JoinRoomEvent];
	
	EsCreateRoomRequest* createRoom = [[[EsCreateRoomRequest alloc] init] autorelease];
	createRoom.roomName = @"LocationCheck";
	createRoom.zoneName = @"Motty";
	
	[server.engine sendMessage:createRoom];
}

- (void)onJoinRoomEvent:(EsJoinRoomEvent*)event
{
    ///NSLog(@"-----[[user joined the room");
    locationCheck = [[server.managerHelper.zoneManager zoneById:event.zoneId] roomById:event.roomId];
    
    /*
    for (int i=0; i<locationCheck.userCount; i++) {
        EsUser *user = (EsUser *) [locationCheck.users objectAtIndex:i];
        //NSLog(@"-----[[user no : %i, name : %@", i, user.userName);
    }*/
    
    isConnectedToLocationRoom = YES;
    
    [self sendLocationToServer];
}

- (void)onPublicMessageEvent:(EsPublicMessageEvent*)event {
	NSLog(@"ON PUBLIC :: %@", [NSString stringWithFormat:@"%@:%@", event.userName, event.message]);
    
}

- (void)onRoomUserUpdateEvent:(EsUserUpdateEvent*)event
{
    NSLog(@"something happened in the room");
    
    [self updateUserArray];
}

- (void) updateUserArray
{
    if (locationCheck!=nil) {
        
        NSMutableArray *userCoordinateArray = [[NSMutableArray alloc] init];
    
        for (int i=0; i<locationCheck.userCount; i++) {
            EsUser *user = (EsUser *) [locationCheck.users objectAtIndex:i];
            if (!user.isMe) {
                EsUserVariable *locationVariable = [user userVariableWithName:@"userLocation"];
            ;
                if (locationVariable!=nil) {
                    [userCoordinateArray addObject:locationVariable];
                }
            }else{
                //NSLog(@"thats my location");
            }
        }
        
        NSDictionary *userInfo = [NSDictionary dictionaryWithObject:userCoordinateArray forKey:@"index"];
        [[NSNotificationCenter defaultCenter] postNotificationName:kUPDATE_PINS object:self userInfo:userInfo];
    }
}

- (void) onUserVariableUpdateEvent:(EsUserVariableUpdateEvent*)event
{
    //NSLog(@"-----[[some user changed variable");
    //NSLog(@"-----[[%@",[event description]);
    [self updateUserArray];
}


- (void)onLeaveRoomEvent:(EsLeaveRoomEvent *)event
{
    NSLog(@"leave room event");
    isConnectedToLocationRoom = NO;
}

- (void)onLeaveRoomResponse:(EsLeaveRoomRequest *)event
{
    NSLog(@"leave room response");
    isConnectedToLocationRoom = NO;
}

#pragma mark SEND SERVER

- (void)submitLoginHandler
{
	NSString* userName = [[UserManager sharedManager] getUser].fbID;
	EsLoginRequest* loginRequest = [[[EsLoginRequest alloc] init] autorelease];
	loginRequest.userName = userName;
	
	[server.engine sendMessage:loginRequest];
}

- (void) sendToServer
{
    EsPublicMessageRequest* msg = [[[EsPublicMessageRequest alloc] init] autorelease];
	msg.roomId = locationCheck.roomId;
	msg.zoneId = locationCheck.zoneId;
	msg.message = @"get location and send";
	
	[server.engine sendMessage:msg];
}

- (void) sendLocationToServer
{
    if ([server.engine connected])
    {
        if (isConnectedToLocationRoom) {
            //NSLog(@">>>>>> SERVER CONNECTED SEND LOCATION <<<<<<");

            EsUpdateUserVariableRequest *req = [[EsUpdateUserVariableRequest alloc] init];
            req.name = @"userLocation";
            EsObject *obj = [[EsObject alloc] init];
            //[obj setString:[[LocationManager sharedManager] getCurrentLocationLatitude] forKey:@"currentLocationLatitude"];
            //[obj setString:[[LocationManager sharedManager] getCurrentLocationLongitude] forKey:@"currentLocationLongitude"];
            [obj setFloat:[[LocationManager sharedManager] getCurrentLocationLatitude] forKey:@"currentLocationLatitude"];
            [obj setFloat:[[LocationManager sharedManager] getCurrentLocationLongitude] forKey:@"currentLocationLongitude"];
            [obj setString:[[UserManager sharedManager] getUser].name forKey:@"name"];
            [obj setString:[[UserManager sharedManager] getUser].surname forKey:@"surname"];
            [obj setString:[[UserManager sharedManager] getUser].fbID forKey:@"facebookID"];
            req.value = obj;
            [server.engine sendMessage:req];
            //EsUserUpdateEvent *ev = [[EsUserUpdateEvent alloc] init];
            //[server.engine sendMessage:ev];
        }
    }
}

// getter

- (int) getUserCount
{
    //NSLog(@"// current room user count :%i",locationCheck.userCount);
    for (int i=0; i<locationCheck.userCount; i++) {
        EsUser *user = (EsUser *) [locationCheck.users objectAtIndex:i];
        //NSLog(@"user no : %i, name : %@", (i+1), user.userName);
    }
    return locationCheck.userCount;
}

@end
