//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsFindGamesRequest.h>
#import <EsThriftUtil.h>

@implementation EsFindGamesRequest

@synthesize searchCriteria = searchCriteria_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_FindGamesRequest;
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
	ThriftFindGamesRequest* t = (ThriftFindGamesRequest*) thriftObject;
	if ([t searchCriteriaIsSet] && t.searchCriteria != nil) {
		self.searchCriteria = [[[EsSearchCriteria alloc] initWithThriftObject:t.searchCriteria] autorelease];
	}
}

- (ThriftFindGamesRequest*) toThrift {
	ThriftFindGamesRequest* _t = [[[ThriftFindGamesRequest alloc] init] autorelease];;
	if (searchCriteria_set_ && searchCriteria_ != nil) {
		ThriftSearchCriteria* _searchCriteria;
		_searchCriteria = [self.searchCriteria toThrift];
		_t.searchCriteria = _searchCriteria;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftFindGamesRequest alloc] init];
}

- (void) setSearchCriteria: (EsSearchCriteria*) searchCriteria {
	[searchCriteria_ release];
	searchCriteria_ = [searchCriteria retain];
	searchCriteria_set_ = true;
}

- (void) dealloc {
	self.searchCriteria = nil;
	[super dealloc];
}

@end