//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsRemoveUDPConnectionRequest.h>
#import <EsThriftUtil.h>

@implementation EsRemoveUDPConnectionRequest

@synthesize port = port_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_RemoveUDPConnectionRequest;
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
	ThriftRemoveUDPConnectionRequest* t = (ThriftRemoveUDPConnectionRequest*) thriftObject;
	if ([t portIsSet]) {
		self.port = t.port;
	}
}

- (ThriftRemoveUDPConnectionRequest*) toThrift {
	ThriftRemoveUDPConnectionRequest* _t = [[[ThriftRemoveUDPConnectionRequest alloc] init] autorelease];;
	if (port_set_) {
		int32_t _port;
		_port = self.port;
		_t.port = _port;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftRemoveUDPConnectionRequest alloc] init];
}

- (void) setPort: (int32_t) port {
	port_ = port;
	port_set_ = true;
}

- (void) dealloc {
	[super dealloc];
}

@end
