//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsGetUserCountRequest.h>
#import <EsThriftUtil.h>

@implementation EsGetUserCountRequest


- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_GetUserCountRequest;
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
}

- (ThriftGetUserCountRequest*) toThrift {
	ThriftGetUserCountRequest* _t = [[[ThriftGetUserCountRequest alloc] init] autorelease];;
	return _t;
}

- (id) newThrift {
	return [[ThriftGetUserCountRequest alloc] init];
}

- (void) dealloc {
	[super dealloc];
}

@end
