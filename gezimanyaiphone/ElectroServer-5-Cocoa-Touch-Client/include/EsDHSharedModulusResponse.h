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
#import <ThriftDHSharedModulusResponse.h>

@interface EsDHSharedModulusResponse : EsResponse {
@private
	BOOL number_set_;
	NSString* number_;
}

@property(retain,nonatomic) NSString* number;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftDHSharedModulusResponse*) toThrift;
- (id) newThrift;
@end