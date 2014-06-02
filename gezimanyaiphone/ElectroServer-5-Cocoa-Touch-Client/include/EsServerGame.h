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
#import <ThriftServerGame.h>
#import <EsFlattenedEsObject.h>
#import <ThriftFlattenedEsObject.h>

@interface EsServerGame : EsEntity {
@private
	BOOL gameDetails_set_;
	EsObject* gameDetails_;
	BOOL id_set_;
	int32_t id_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL locked_set_;
	BOOL locked_;
	BOOL passwordProtected_set_;
	BOOL passwordProtected_;
}

@property(retain,nonatomic) EsObject* gameDetails;
@property(nonatomic) int32_t id;
@property(nonatomic) int32_t roomId;
@property(nonatomic) int32_t zoneId;
@property(nonatomic) BOOL locked;
@property(nonatomic) BOOL passwordProtected;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftServerGame*) toThrift;
- (id) newThrift;
@end