//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsSessionIdleEvent.h>
#import <EsThriftUtil.h>

@implementation EsSessionIdleEvent


- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_SessionIdleEvent;
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

- (ThriftSessionIdleEvent*) toThrift {
	ThriftSessionIdleEvent* _t = [[[ThriftSessionIdleEvent alloc] init] autorelease];;
	return _t;
}

- (id) newThrift {
	return [[ThriftSessionIdleEvent alloc] init];
}

- (void) dealloc {
	[super dealloc];
}

@end
