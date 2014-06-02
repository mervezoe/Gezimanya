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
#import <ThriftEvictUserFromRoomRequest.h>

/**
 * By default, the first client joined to a room is the room operator. 
 When the client leaves the room the operator status goes to the next person 
 that has joined the room. As a room operator a client can kick users 
 from the room or ban them from the server, provided the operator's user permissions
 (as set in ES Admin) allow this to be done.  If the kick succeeds, 
 all users in the room get a UserEvictedFromRoomEvent giving the 
 name of the user kicked and the reason.
 
<pre>
var eur:EvictUserFromRoomRequest = new EvictUserFromRoomRequest();
eur.userName = userToKick;
eur.ban = false;
eur.duration = -1;
eur.roomId = _room.id;
eur.zoneId = _room.zoneId;
eur.reason = "you smell";

_es.engine.send(eur);
</pre>
 */
@interface EsEvictUserFromRoomRequest : EsRequest {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL userName_set_;
	NSString* userName_;
	BOOL reason_set_;
	NSString* reason_;
	BOOL ban_set_;
	BOOL ban_;
	BOOL duration_set_;
	int32_t duration_;
}

/**
 * Id of the zone that contains the room that contains the user.
 */
@property(nonatomic) int32_t zoneId;
/**
 * Id of the room that contains the user.
 */
@property(nonatomic) int32_t roomId;
@property(retain,nonatomic) NSString* userName;
/**
 * Reason for the kick or ban. The target user receives this reason.
 */
@property(retain,nonatomic) NSString* reason;
/**
 * Set to true if the user should be banned as well.
 */
@property(nonatomic) BOOL ban;
/**
 * The duration of the ban.
 */
@property(nonatomic) int32_t duration;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftEvictUserFromRoomRequest*) toThrift;
- (id) newThrift;
@end
