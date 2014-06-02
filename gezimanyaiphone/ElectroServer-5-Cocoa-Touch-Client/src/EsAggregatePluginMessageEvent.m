//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsAggregatePluginMessageEvent.h>
#import <EsThriftUtil.h>

@implementation EsAggregatePluginMessageEvent

@synthesize pluginName = pluginName_;
@synthesize esObjects = esObjects_;
@synthesize originZoneId = originZoneId_;
@synthesize originRoomId = originRoomId_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_AggregatePluginMessageEvent;
		self.esObjects = [NSMutableArray array];
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
	ThriftAggregatePluginMessageEvent* t = (ThriftAggregatePluginMessageEvent*) thriftObject;
	if ([t pluginNameIsSet] && t.pluginName != nil) {
		self.pluginName = t.pluginName;
	}
	if ([t esObjectsIsSet] && t.esObjects != nil) {
		self.esObjects = [[[NSMutableArray alloc] init] autorelease];
		for (ThriftFlattenedEsObjectRO* _tValVar_0 in t.esObjects) {
			EsObject* _listDestVar_0;
			_listDestVar_0 = [EsThriftUtil unflattenEsObjectRO:[[[EsFlattenedEsObjectRO alloc] initWithThriftObject:_tValVar_0] autorelease]];
			[self.esObjects addObject: _listDestVar_0];
		}
	}
	if ([t originZoneIdIsSet]) {
		self.originZoneId = t.originZoneId;
	}
	if ([t originRoomIdIsSet]) {
		self.originRoomId = t.originRoomId;
	}
}

- (ThriftAggregatePluginMessageEvent*) toThrift {
	ThriftAggregatePluginMessageEvent* _t = [[[ThriftAggregatePluginMessageEvent alloc] init] autorelease];;
	if (pluginName_set_ && pluginName_ != nil) {
		NSString* _pluginName;
		_pluginName = self.pluginName;
		_t.pluginName = _pluginName;
	}
	if (esObjects_set_ && esObjects_ != nil) {
		NSMutableArray* _esObjects;
		_esObjects = [[[NSMutableArray alloc] init] autorelease];
		for (EsObject* _tValVar_0 in self.esObjects) {
			ThriftFlattenedEsObjectRO* _listDestVar_0;
			_listDestVar_0 = [[EsThriftUtil flattenEsObjectRO:_tValVar_0] toThrift];
			[_esObjects addObject: _listDestVar_0];
		}
		_t.esObjects = _esObjects;
	}
	if (originZoneId_set_) {
		int32_t _originZoneId;
		_originZoneId = self.originZoneId;
		_t.originZoneId = _originZoneId;
	}
	if (originRoomId_set_) {
		int32_t _originRoomId;
		_originRoomId = self.originRoomId;
		_t.originRoomId = _originRoomId;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftAggregatePluginMessageEvent alloc] init];
}

- (void) setPluginName: (NSString*) pluginName {
	[pluginName_ release];
	pluginName_ = [pluginName retain];
	pluginName_set_ = true;
}

- (void) setEsObjects: (NSMutableArray*) esObjects {
	[esObjects_ release];
	esObjects_ = [esObjects retain];
	esObjects_set_ = true;
}

- (void) setOriginZoneId: (int32_t) originZoneId {
	originZoneId_ = originZoneId;
	originZoneId_set_ = true;
}

- (void) setOriginRoomId: (int32_t) originRoomId {
	originRoomId_ = originRoomId;
	originRoomId_set_ = true;
}

- (void) dealloc {
	self.pluginName = nil;
	self.esObjects = nil;
	[super dealloc];
}

@end
