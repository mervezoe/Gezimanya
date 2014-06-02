//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsBuddyStatusUpdateEvent.h>
#import <EsThriftUtil.h>

@implementation EsBuddyStatusUpdateEvent

@synthesize userName = userName_;
@synthesize action = action_;
@synthesize esObject = esObject_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_BuddyStatusUpdatedEvent;
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
	ThriftBuddyStatusUpdateEvent* t = (ThriftBuddyStatusUpdateEvent*) thriftObject;
	if ([t userNameIsSet] && t.userName != nil) {
		self.userName = t.userName;
	}
	if ([t actionIsSet]) {
		self.action = t.action;
	}
	if ([t esObjectIsSet] && t.esObject != nil) {
		self.esObject = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.esObject] autorelease]];
	}
}

- (ThriftBuddyStatusUpdateEvent*) toThrift {
	ThriftBuddyStatusUpdateEvent* _t = [[[ThriftBuddyStatusUpdateEvent alloc] init] autorelease];;
	if (userName_set_ && userName_ != nil) {
		NSString* _userName;
		_userName = self.userName;
		_t.userName = _userName;
	}
	if (action_set_) {
		int _action;
		_action = self.action;
		_t.action = _action;
	}
	if (esObject_set_ && esObject_ != nil) {
		ThriftFlattenedEsObject* _esObject;
		_esObject = [[EsThriftUtil flattenEsObject:self.esObject] toThrift];
		_t.esObject = _esObject;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftBuddyStatusUpdateEvent alloc] init];
}

- (void) setUserName: (NSString*) userName {
	[userName_ release];
	userName_ = [userName retain];
	userName_set_ = true;
}

- (void) setAction: (int) action {
	action_ = action;
	action_set_ = true;
}

- (void) setEsObject: (EsObject*) esObject {
	[esObject_ release];
	esObject_ = [esObject retain];
	esObject_set_ = true;
}

- (void) dealloc {
	self.userName = nil;
	self.esObject = nil;
	[super dealloc];
}

@end
