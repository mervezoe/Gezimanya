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
#import <ThriftRemoveBuddiesRequest.h>

/**
 * This request removes a user from a client's buddy list. A server extension can also remove a buddy.
 * 
 * This example shows how to remove a user from the buddy list.
 
 <pre>
//create the request and configure it
var rbr:RemoveBuddyRequest = new RemoveBuddyRequest();
rbr.buddyName = "mike";

//send it
_es.engine.send(rbr);
</pre>
 */
@interface EsRemoveBuddiesRequest : EsRequest {
@private
	BOOL buddyNames_set_;
	NSMutableArray* buddyNames_;
}

/**
 * Name of the user to remove from the buddy list.
 */
@property(retain,nonatomic) NSMutableArray* buddyNames;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftRemoveBuddiesRequest*) toThrift;
- (id) newThrift;
@end
