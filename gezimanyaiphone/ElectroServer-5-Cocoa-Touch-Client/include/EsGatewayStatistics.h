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
#import <ThriftGatewayStatistics.h>

@interface EsGatewayStatistics : EsEntity {
@private
	BOOL bytesInTotal_set_;
	int64_t bytesInTotal_;
	BOOL bytesOutTotal_set_;
	int64_t bytesOutTotal_;
	BOOL messagesInTotal_set_;
	int64_t messagesInTotal_;
	BOOL messagesOutTotal_set_;
	int64_t messagesOutTotal_;
}

@property(nonatomic) int64_t bytesInTotal;
@property(nonatomic) int64_t bytesOutTotal;
@property(nonatomic) int64_t messagesInTotal;
@property(nonatomic) int64_t messagesOutTotal;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftGatewayStatistics*) toThrift;
- (id) newThrift;
@end
