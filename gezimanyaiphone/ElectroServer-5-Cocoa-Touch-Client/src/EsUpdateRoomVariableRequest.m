//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsUpdateRoomVariableRequest.h>
#import <EsThriftUtil.h>

@implementation EsUpdateRoomVariableRequest

@synthesize zoneId = zoneId_;
@synthesize roomId = roomId_;
@synthesize name = name_;
@synthesize valueChanged = valueChanged_;
@synthesize value = value_;
@synthesize lockStatusChanged = lockStatusChanged_;
@synthesize locked = locked_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_UpdateRoomVariableRequest;
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
	ThriftUpdateRoomVariableRequest* t = (ThriftUpdateRoomVariableRequest*) thriftObject;
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t nameIsSet] && t.name != nil) {
		self.name = t.name;
	}
	if ([t valueChangedIsSet]) {
		self.valueChanged = t.valueChanged;
	}
	if ([t valueIsSet] && t.value != nil) {
		self.value = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.value] autorelease]];
	}
	if ([t lockStatusChangedIsSet]) {
		self.lockStatusChanged = t.lockStatusChanged;
	}
	if ([t lockedIsSet]) {
		self.locked = t.locked;
	}
}

- (ThriftUpdateRoomVariableRequest*) toThrift {
	ThriftUpdateRoomVariableRequest* _t = [[[ThriftUpdateRoomVariableRequest alloc] init] autorelease];;
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
	if (name_set_ && name_ != nil) {
		NSString* _name;
		_name = self.name;
		_t.name = _name;
	}
	if (valueChanged_set_) {
		BOOL _valueChanged;
		_valueChanged = self.valueChanged;
		_t.valueChanged = _valueChanged;
	}
	if (value_set_ && value_ != nil) {
		ThriftFlattenedEsObject* _value;
		_value = [[EsThriftUtil flattenEsObject:self.value] toThrift];
		_t.value = _value;
	}
	if (lockStatusChanged_set_) {
		BOOL _lockStatusChanged;
		_lockStatusChanged = self.lockStatusChanged;
		_t.lockStatusChanged = _lockStatusChanged;
	}
	if (locked_set_) {
		BOOL _locked;
		_locked = self.locked;
		_t.locked = _locked;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftUpdateRoomVariableRequest alloc] init];
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setName: (NSString*) name {
	[name_ release];
	name_ = [name retain];
	name_set_ = true;
}

- (void) setValueChanged: (BOOL) valueChanged {
	valueChanged_ = valueChanged;
	valueChanged_set_ = true;
}

- (void) setValue: (EsObject*) value {
	[value_ release];
	value_ = [value retain];
	value_set_ = true;
}

- (void) setLockStatusChanged: (BOOL) lockStatusChanged {
	lockStatusChanged_ = lockStatusChanged;
	lockStatusChanged_set_ = true;
}

- (void) setLocked: (BOOL) locked {
	locked_ = locked;
	locked_set_ = true;
}

- (void) dealloc {
	self.name = nil;
	self.value = nil;
	[super dealloc];
}

@end
