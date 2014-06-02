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
#import <ThriftJoinRoomEvent.h>
#import <EsFlattenedEsObject.h>
#import <ThriftFlattenedEsObject.h>
#import <EsRoomVariable.h>
#import <ThriftRoomVariable.h>
#import <EsUserListEntry.h>
#import <ThriftUserListEntry.h>
#import <EsUserVariable.h>
#import <ThriftUserVariable.h>

/**
 * When a user is joined successfully to a room this event occurs. A user can end up in a room in one of two ways: 1) They can opt into joining the room by using the JoinRoomRequest or
 CreateRoomRequest requests, or 2) a server extension can put them into a room. In either case this event will occur
 if the room is joined.
 
 In the event of a CreateRoomRequest that fails to join a room, the client will
 be sent a GenericErrorResponse.
 * 
 * Shows the most simple example of how to create a new room and capture the JoinRoomEvent.
 <pre>
package  {
        import com.electrotank.electroserver5.api.CreateRoomRequest;
        import com.electrotank.electroserver5.api.JoinRoomEvent;
        import com.electrotank.electroserver5.api.MessageType;
        import com.electrotank.electroserver5.ElectroServer;
        import com.electrotank.electroserver5.user.User;
        import com.electrotank.electroserver5.zone.Room;
        import flash.events.Event;

        public class RoomJoiner {

                private var _es:ElectroServer;

                public function initialize():void {
                        //listen for the JoinRoomEvent so we know when it happens
                        _es.engine.addEventListener(MessageType.JoinRoomEvent.name, onJoinRoomEvent);

                        //create the request and populate it with the room details
                        var crr:CreateRoomRequest = new CreateRoomRequest();
                        crr.roomName = "MyRoom";
                        crr.zoneName = "MyZone";

                        //send it
                        _es.engine.send(crr);
                }

                private function onJoinRoomEvent(e:JoinRoomEvent):void {
                        trace("room joined!");

                        //get the room you're in
                        var room:Room = _es.managerHelper.zoneManager.zoneById(e.zoneId).roomById(e.roomId);

                        //print out the users in the room
                        for each (var user:User in room.users) {
                                trace(user.userName);
                        }
                }

                public function set es(value:ElectroServer):void {
                        _es = value;
                }

        }

}
    </pre>
 */
@interface EsJoinRoomEvent : EsEvent {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL roomName_set_;
	NSString* roomName_;
	BOOL roomDescription_set_;
	NSString* roomDescription_;
	BOOL hasPassword_set_;
	BOOL hasPassword_;
	BOOL hidden_set_;
	BOOL hidden_;
	BOOL capacity_set_;
	int32_t capacity_;
	BOOL users_set_;
	NSMutableArray* users_;
	BOOL roomVariables_set_;
	NSMutableArray* roomVariables_;
}

/**
 * The id of the zone that contains the room.
 */
@property(nonatomic) int32_t zoneId;
/**
 * The id of the room the user just joined.
 */
@property(nonatomic) int32_t roomId;
/**
 * The name of the room the user just joined.
 */
@property(retain,nonatomic) NSString* roomName;
/**
 * Optional field. The description of the room the user just joined.
 */
@property(retain,nonatomic) NSString* roomDescription;
/**
 * If the room is password protected, this is true.
 */
@property(nonatomic) BOOL hasPassword;
/**
 * If the room is hidden, this is true.
 */
@property(nonatomic) BOOL hidden;
/**
 * The number of users allowed in this room. A value of -1 means there is no restriction.
 */
@property(nonatomic) int32_t capacity;
/**
 * A list of users (UserListEntry) that are in this room.
 */
@property(retain,nonatomic) NSMutableArray* users;
/**
 * A list of RoomVariables in this room.
 */
@property(retain,nonatomic) NSMutableArray* roomVariables;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftJoinRoomEvent*) toThrift;
- (id) newThrift;
@end
