//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsCreateOrJoinGameResponse.h>
#import <EsThriftUtil.h>

@implementation EsCreateOrJoinGameResponse

@synthesize successful = successful_;
@synthesize error = error_;
@synthesize zoneId = zoneId_;
@synthesize roomId = roomId_;
@synthesize gameId = gameId_;
@synthesize gameDetails = gameDetails_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_CreateOrJoinGameResponse;
		if (thriftObject != nil) {
			[self fromThrift: thriftObject];
		}
	}
	return self;
}

- (id) init {
	return [self initWithThriftObject: nil];
}

- (void) fromThrift: (id) thriftObject {
	ThriftCreateOrJoinGameResponse* t = (ThriftCreateOrJoinGameResponse*) thriftObject;
	if ([t successfulIsSet]) {
		self.successful = t.successful;
	}
	if ([t errorIsSet]) {
		self.error = t.error;
	}
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t gameIdIsSet]) {
		self.gameId = t.gameId;
	}
	if ([t gameDetailsIsSet] && t.gameDetails != nil) {
		self.gameDetails = [EsThriftUtil unflattenEsObjectRO:[[[EsFlattenedEsObjectRO alloc] initWithThriftObject:t.gameDetails] autorelease]];
	}
}

- (ThriftCreateOrJoinGameResponse*) toThrift {
	ThriftCreateOrJoinGameResponse* _t = [[[ThriftCreateOrJoinGameResponse alloc] init] autorelease];;
	if (successful_set_) {
		BOOL _successful;
		_successful = self.successful;
		_t.successful = _successful;
	}
	if (error_set_) {
		int _error;
		_error = self.error;
		_t.error = _error;
	}
	if (zoneId_set_) {
		int32_t _zoneId;
		_zoneId = self.zoneId;
		_t.zoneId = _zoneId;
	}
	if (roomId_set_) {
		int32_t _roomId;
		_roomId = self.roomId;
		_t.roomId = _roomId;
	}
	if (gameId_set_) {
		int32_t _gameId;
		_gameId = self.gameId;
		_t.gameId = _gameId;
	}
	if (gameDetails_set_ && gameDetails_ != nil) {
		ThriftFlattenedEsObjectRO* _gameDetails;
		_gameDetails = [[EsThriftUtil flattenEsObjectRO:self.gameDetails] toThrift];
		_t.gameDetails = _gameDetails;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftCreateOrJoinGameResponse alloc] init];
}

- (void) setSuccessful: (BOOL) successful {
	successful_ = successful;
	successful_set_ = true;
}

- (void) setError: (int) error {
	error_ = error;
	error_set_ = true;
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setGameId: (int32_t) gameId {
	gameId_ = gameId;
	gameId_set_ = true;
}

- (void) setGameDetails: (EsObject*) gameDetails {
	[gameDetails_ release];
	gameDetails_ = [gameDetails retain];
	gameDetails_set_ = true;
}

- (void) dealloc {
	self.gameDetails = nil;
	[super dealloc];
}

@end
