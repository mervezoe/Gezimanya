//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsPrivateMessageEvent.h>
#import <EsThriftUtil.h>

@implementation EsPrivateMessageEvent

@synthesize userName = userName_;
@synthesize message = message_;
@synthesize esObject = esObject_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_PrivateMessageEvent;
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
	ThriftPrivateMessageEvent* t = (ThriftPrivateMessageEvent*) thriftObject;
	if ([t userNameIsSet] && t.userName != nil) {
		self.userName = t.userName;
	}
	if ([t messageIsSet] && t.message != nil) {
		self.message = t.message;
	}
	if ([t esObjectIsSet] && t.esObject != nil) {
		self.esObject = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.esObject] autorelease]];
	}
}

- (ThriftPrivateMessageEvent*) toThrift {
	ThriftPrivateMessageEvent* _t = [[[ThriftPrivateMessageEvent alloc] init] autorelease];;
	if (userName_set_ && userName_ != nil) {
		NSString* _userName;
		_userName = self.userName;
		_t.userName = _userName;
	}
	if (message_set_ && message_ != nil) {
		NSString* _message;
		_message = self.message;
		_t.message = _message;
	}
	if (esObject_set_ && esObject_ != nil) {
		ThriftFlattenedEsObject* _esObject;
		_esObject = [[EsThriftUtil flattenEsObject:self.esObject] toThrift];
		_t.esObject = _esObject;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftPrivateMessageEvent alloc] init];
}

- (void) setUserName: (NSString*) userName {
	[userName_ release];
	userName_ = [userName retain];
	userName_set_ = true;
}

- (void) setMessage: (NSString*) message {
	[message_ release];
	message_ = [message retain];
	message_set_ = true;
}

- (void) setEsObject: (EsObject*) esObject {
	[esObject_ release];
	esObject_ = [esObject retain];
	esObject_set_ = true;
}

- (void) dealloc {
	self.userName = nil;
	self.message = nil;
	self.esObject = nil;
	[super dealloc];
}

@end
