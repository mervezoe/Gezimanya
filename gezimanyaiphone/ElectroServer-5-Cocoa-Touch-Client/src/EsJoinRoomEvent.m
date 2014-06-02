//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsJoinRoomEvent.h>
#import <EsThriftUtil.h>

@implementation EsJoinRoomEvent

@synthesize zoneId = zoneId_;
@synthesize roomId = roomId_;
@synthesize roomName = roomName_;
@synthesize roomDescription = roomDescription_;
@synthesize hasPassword = hasPassword_;
@synthesize hidden = hidden_;
@synthesize capacity = capacity_;
@synthesize users = users_;
@synthesize roomVariables = roomVariables_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_JoinRoomEvent;
		self.users = [NSMutableArray array];
		self.roomVariables = [NSMutableArray array];
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
	ThriftJoinRoomEvent* t = (ThriftJoinRoomEvent*) thriftObject;
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t roomNameIsSet] && t.roomName != nil) {
		self.roomName = t.roomName;
	}
	if ([t roomDescriptionIsSet] && t.roomDescription != nil) {
		self.roomDescription = t.roomDescription;
	}
	if ([t hasPasswordIsSet]) {
		self.hasPassword = t.hasPassword;
	}
	if ([t hiddenIsSet]) {
		self.hidden = t.hidden;
	}
	if ([t capacityIsSet]) {
		self.capacity = t.capacity;
	}
	if ([t usersIsSet] && t.users != nil) {
		self.users = [[[NSMutableArray alloc] init] autorelease];
		for (ThriftUserListEntry* _tValVar_0 in t.users) {
			EsUserListEntry* _listDestVar_0;
			_listDestVar_0 = [[[EsUserListEntry alloc] initWithThriftObject:_tValVar_0] autorelease];
			[self.users addObject: _listDestVar_0];
		}
	}
	if ([t roomVariablesIsSet] && t.roomVariables != nil) {
		self.roomVariables = [[[NSMutableArray alloc] init] autorelease];
		for (ThriftRoomVariable* _tValVar_0 in t.roomVariables) {
			EsRoomVariable* _listDestVar_0;
			_listDestVar_0 = [[[EsRoomVariable alloc] initWithThriftObject:_tValVar_0] autorelease];
			[self.roomVariables addObject: _listDestVar_0];
		}
	}
}

- (ThriftJoinRoomEvent*) toThrift {
	ThriftJoinRoomEvent* _t = [[[ThriftJoinRoomEvent alloc] init] autorelease];;
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
	if (roomName_set_ && roomName_ != nil) {
		NSString* _roomName;
		_roomName = self.roomName;
		_t.roomName = _roomName;
	}
	if (roomDescription_set_ && roomDescription_ != nil) {
		NSString* _roomDescription;
		_roomDescription = self.roomDescription;
		_t.roomDescription = _roomDescription;
	}
	if (hasPassword_set_) {
		BOOL _hasPassword;
		_hasPassword = self.hasPassword;
		_t.hasPassword = _hasPassword;
	}
	if (hidden_set_) {
		BOOL _hidden;
		_hidden = self.hidden;
		_t.hidden = _hidden;
	}
	if (capacity_set_) {
		int32_t _capacity;
		_capacity = self.capacity;
		_t.capacity = _capacity;
	}
	if (users_set_ && users_ != nil) {
		NSMutableArray* _users;
		_users = [[[NSMutableArray alloc] init] autorelease];
		for (EsUserListEntry* _tValVar_0 in self.users) {
			ThriftUserListEntry* _listDestVar_0;
			_listDestVar_0 = [_tValVar_0 toThrift];
			[_users addObject: _listDestVar_0];
		}
		_t.users = _users;
	}
	if (roomVariables_set_ && roomVariables_ != nil) {
		NSMutableArray* _roomVariables;
		_roomVariables = [[[NSMutableArray alloc] init] autorelease];
		for (EsRoomVariable* _tValVar_0 in self.roomVariables) {
			ThriftRoomVariable* _listDestVar_0;
			_listDestVar_0 = [_tValVar_0 toThrift];
			[_roomVariables addObject: _listDestVar_0];
		}
		_t.roomVariables = _roomVariables;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftJoinRoomEvent alloc] init];
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setRoomName: (NSString*) roomName {
	[roomName_ release];
	roomName_ = [roomName retain];
	roomName_set_ = true;
}

- (void) setRoomDescription: (NSString*) roomDescription {
	[roomDescription_ release];
	roomDescription_ = [roomDescription retain];
	roomDescription_set_ = true;
}

- (void) setHasPassword: (BOOL) hasPassword {
	hasPassword_ = hasPassword;
	hasPassword_set_ = true;
}

- (void) setHidden: (BOOL) hidden {
	hidden_ = hidden;
	hidden_set_ = true;
}

- (void) setCapacity: (int32_t) capacity {
	capacity_ = capacity;
	capacity_set_ = true;
}

- (void) setUsers: (NSMutableArray*) users {
	[users_ release];
	users_ = [users retain];
	users_set_ = true;
}

- (void) setRoomVariables: (NSMutableArray*) roomVariables {
	[roomVariables_ release];
	roomVariables_ = [roomVariables retain];
	roomVariables_set_ = true;
}

- (void) dealloc {
	self.roomName = nil;
	self.roomDescription = nil;
	self.users = nil;
	self.roomVariables = nil;
	[super dealloc];
}

@end
