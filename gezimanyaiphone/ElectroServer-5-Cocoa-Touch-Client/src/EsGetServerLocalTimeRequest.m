//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsGetServerLocalTimeRequest.h>
#import <EsThriftUtil.h>

@implementation EsGetServerLocalTimeRequest


- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_GetServerLocalTimeRequest;
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

- (ThriftGetServerLocalTimeRequest*) toThrift {
	ThriftGetServerLocalTimeRequest* _t = [[[ThriftGetServerLocalTimeRequest alloc] init] autorelease];;
	return _t;
}

- (id) newThrift {
	return [[ThriftGetServerLocalTimeRequest alloc] init];
}

- (void) dealloc {
	[super dealloc];
}

@end