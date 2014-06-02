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
#import <ThriftServerKickUserEvent.h>
#import <EsFlattenedEsObjectRO.h>
#import <ThriftFlattenedEsObjectRO.h>
#import <EsErrorType.h>
#import <ThriftErrorType.h>

/**
 * When a user is kicked from the server, this event occurs.
 */
@interface EsServerKickUserEvent : EsEvent {
@private
	BOOL error_set_;
	int error_;
	BOOL esObject_set_;
	EsObject* esObject_;
}

@property(nonatomic) int error;
@property(retain,nonatomic) EsObject* esObject;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftServerKickUserEvent*) toThrift;
- (id) newThrift;
@end
