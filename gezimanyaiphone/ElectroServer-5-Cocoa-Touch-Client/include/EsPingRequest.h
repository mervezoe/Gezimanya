//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsMessage.h>
#import <EsMessageType.h>
#import <EsRequest.h>
#import <EsResponse.h>
#import <EsEvent.h>
#import <EsEntity.h>
#import <EsObject.h>
#import <ThriftPingRequest.h>

@interface EsPingRequest : EsRequest {
@private
	BOOL globalResponseRequested_set_;
	BOOL globalResponseRequested_;
	BOOL sessionKey_set_;
	int32_t sessionKey_;
	BOOL pingRequestId_set_;
	int32_t pingRequestId_;
}

@property(nonatomic) BOOL globalResponseRequested;
@property(nonatomic) int32_t sessionKey;
@property(nonatomic) int32_t pingRequestId;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftPingRequest*) toThrift;
- (id) newThrift;
@end