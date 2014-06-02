//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsPluginRequest.h>
#import <EsThriftUtil.h>

@implementation EsPluginRequest

@synthesize pluginName = pluginName_;
@synthesize zoneId = zoneId_;
@synthesize roomId = roomId_;
@synthesize sessionKey = sessionKey_;
@synthesize parameters = parameters_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_PluginRequest;
		self.zoneId = -1;
		self.roomId = -1;
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
	ThriftPluginRequest* t = (ThriftPluginRequest*) thriftObject;
	if ([t pluginNameIsSet] && t.pluginName != nil) {
		self.pluginName = t.pluginName;
	}
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t sessionKeyIsSet]) {
		self.sessionKey = t.sessionKey;
	}
	if ([t parametersIsSet] && t.parameters != nil) {
		self.parameters = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.parameters] autorelease]];
	}
}

- (ThriftPluginRequest*) toThrift {
	ThriftPluginRequest* _t = [[[ThriftPluginRequest alloc] init] autorelease];;
	if (pluginName_set_ && pluginName_ != nil) {
		NSString* _pluginName;
		_pluginName = self.pluginName;
		_t.pluginName = _pluginName;
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
	if (sessionKey_set_) {
		int32_t _sessionKey;
		_sessionKey = self.sessionKey;
		_t.sessionKey = _sessionKey;
	}
	if (parameters_set_ && parameters_ != nil) {
		ThriftFlattenedEsObject* _parameters;
		_parameters = [[EsThriftUtil flattenEsObject:self.parameters] toThrift];
		_t.parameters = _parameters;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftPluginRequest alloc] init];
}

- (void) setPluginName: (NSString*) pluginName {
	[pluginName_ release];
	pluginName_ = [pluginName retain];
	pluginName_set_ = true;
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setSessionKey: (int32_t) sessionKey {
	sessionKey_ = sessionKey;
	sessionKey_set_ = true;
}

- (void) setParameters: (EsObject*) parameters {
	[parameters_ release];
	parameters_ = [parameters retain];
	parameters_set_ = true;
}

- (void) dealloc {
	self.pluginName = nil;
	self.parameters = nil;
	[super dealloc];
}

@end
