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
#import <ThriftRegisterUDPConnectionRequest.h>

@interface EsRegisterUDPConnectionRequest : EsRequest {
@private
	BOOL port_set_;
	int32_t port_;
}

@property(nonatomic) int32_t port;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftRegisterUDPConnectionRequest*) toThrift;
- (id) newThrift;
@end