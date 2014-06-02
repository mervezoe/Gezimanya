//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsRegisterUDPConnectionResponse.h>
#import <EsThriftUtil.h>

@implementation EsRegisterUDPConnectionResponse

@synthesize successful = successful_;
@synthesize sessionKey = sessionKey_;
@synthesize error = error_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_RegisterUDPConnectionResponse;
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
	ThriftRegisterUDPConnectionResponse* t = (ThriftRegisterUDPConnectionResponse*) thriftObject;
	if ([t successfulIsSet]) {
		self.successful = t.successful;
	}
	if ([t sessionKeyIsSet]) {
		self.sessionKey = t.sessionKey;
	}
	if ([t errorIsSet]) {
		self.error = t.error;
	}
}

- (ThriftRegisterUDPConnectionResponse*) toThrift {
	ThriftRegisterUDPConnectionResponse* _t = [[[ThriftRegisterUDPConnectionResponse alloc] init] autorelease];;
	if (successful_set_) {
		BOOL _successful;
		_successful = self.successful;
		_t.successful = _successful;
	}
	if (sessionKey_set_) {
		int32_t _sessionKey;
		_sessionKey = self.sessionKey;
		_t.sessionKey = _sessionKey;
	}
	if (error_set_) {
		int _error;
		_error = self.error;
		_t.error = _error;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftRegisterUDPConnectionResponse alloc] init];
}

- (void) setSuccessful: (BOOL) successful {
	successful_ = successful;
	successful_set_ = true;
}

- (void) setSessionKey: (int32_t) sessionKey {
	sessionKey_ = sessionKey;
	sessionKey_set_ = true;
}

- (void) setError: (int) error {
	error_ = error;
	error_set_ = true;
}

- (void) dealloc {
	[super dealloc];
}

@end
