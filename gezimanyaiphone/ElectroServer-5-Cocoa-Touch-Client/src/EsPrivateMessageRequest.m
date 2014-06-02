//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsPrivateMessageRequest.h>
#import <EsThriftUtil.h>

@implementation EsPrivateMessageRequest

@synthesize message = message_;
@synthesize userNames = userNames_;
@synthesize esObject = esObject_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_PrivateMessageRequest;
		self.userNames = [NSMutableArray array];
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
	ThriftPrivateMessageRequest* t = (ThriftPrivateMessageRequest*) thriftObject;
	if ([t messageIsSet] && t.message != nil) {
		self.message = t.message;
	}
	if ([t userNamesIsSet] && t.userNames != nil) {
		self.userNames = [[[NSMutableArray alloc] init] autorelease];
		for (NSString* _tValVar_0 in t.userNames) {
			NSString* _listDestVar_0;
			_listDestVar_0 = _tValVar_0;
			[self.userNames addObject: _listDestVar_0];
		}
	}
	if ([t esObjectIsSet] && t.esObject != nil) {
		self.esObject = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.esObject] autorelease]];
	}
}

- (ThriftPrivateMessageRequest*) toThrift {
	ThriftPrivateMessageRequest* _t = [[[ThriftPrivateMessageRequest alloc] init] autorelease];;
	if (message_set_ && message_ != nil) {
		NSString* _message;
		_message = self.message;
		_t.message = _message;
	}
	if (userNames_set_ && userNames_ != nil) {
		NSMutableArray* _userNames;
		_userNames = [[[NSMutableArray alloc] init] autorelease];
		for (NSString* _tValVar_0 in self.userNames) {
			NSString* _listDestVar_0;
			_listDestVar_0 = _tValVar_0;
			[_userNames addObject: _listDestVar_0];
		}
		_t.userNames = _userNames;
	}
	if (esObject_set_ && esObject_ != nil) {
		ThriftFlattenedEsObject* _esObject;
		_esObject = [[EsThriftUtil flattenEsObject:self.esObject] toThrift];
		_t.esObject = _esObject;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftPrivateMessageRequest alloc] init];
}

- (void) setMessage: (NSString*) message {
	[message_ release];
	message_ = [message retain];
	message_set_ = true;
}

- (void) setUserNames: (NSMutableArray*) userNames {
	[userNames_ release];
	userNames_ = [userNames retain];
	userNames_set_ = true;
}

- (void) setEsObject: (EsObject*) esObject {
	[esObject_ release];
	esObject_ = [esObject retain];
	esObject_set_ = true;
}

- (void) dealloc {
	self.message = nil;
	self.userNames = nil;
	self.esObject = nil;
	[super dealloc];
}

@end
