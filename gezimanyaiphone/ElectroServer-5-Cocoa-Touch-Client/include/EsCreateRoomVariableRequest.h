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
#import <ThriftCreateRoomVariableRequest.h>
#import <EsFlattenedEsObject.h>
#import <ThriftFlattenedEsObject.h>

/**
 * This request creates a room variable. 
 A room variable is a name/value pair scoped to a room and managed on the server. The value is an EsObject. Room variables are accessible via the client also. A room variable can be created, 
 updated, or removed by a client or by a server extension. In addition to the name and value a room variable has two other properties: locked and persistent, both booleans. If locked is true 
 then the variable cannot be modified until unlocked. If persistent is true then the variable stays alive until manually deleted or the room dies. If persistent is false then the variable 
 dies when the user that creates it leaves the room, or if it is manually removed. In addition to being created by this request, room variables can also be created (and modified) by the server 
 or created during the creation of the room using the CreateRoomRequest.
 * 
 * This shows how to create a room variable and watch for the RoomVariableUpdateEvent.
 
 <pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.RoomVariableUpdateEvent.name, onRoomVariableUpdateEvent);

        testCreateRoomVariable();
}

private function testCreateRoomVariable():void {
        //create the request object and populate with data
        var crvr:CreateRoomVariableRequest = new CreateRoomVariableRequest();
        crvr.name = "background";
        crvr.value = new EsObject();
        crvr.value.setString("music", "pop.mp3");
        crvr.value.setString("color", "blue");

        //send it
        _es.engine.send(crvr);
}

private function onRoomVariableUpdateEvent(e:RoomVariableUpdateEvent):void {
        var room:Room = _es.managerHelper.zoneManager.zoneById(e.zoneId).roomById(e.roomId);
        var roomVar:RoomVariable;
        switch (e.action) {
                case RoomVariableUpdateAction.VariableCreated:
                        //the variable is already being managed in the room, so grab it
                        roomVar = room.roomVariableByName(e.name);
                        trace("Room variable created. Name: " + roomVar.name + ", value: " + roomVar.value.toString());
                        break;
                case RoomVariableUpdateAction.VariableDeleted:
                        //the variable has already been deleted in the room, so for its name inspect the event object
                        trace("Room variable deleted. Name: " + e.name);
                        break;
                case RoomVariableUpdateAction.VariableUpdated:
                        //the variable is being managed in the room, so grab it
                        roomVar = room.roomVariableByName(e.name);
                        trace("Room variable updated. Name: " + roomVar.name + ", value: " + roomVar.value.toString());
                        break;
        }
}
</pre>
 */
@interface EsCreateRoomVariableRequest : EsRequest {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL name_set_;
	NSString* name_;
	BOOL value_set_;
	EsObject* value_;
	BOOL locked_set_;
	BOOL locked_;
	BOOL persistent_set_;
	BOOL persistent_;
}

/**
 * Id of the zone that contains the room.
 */
@property(nonatomic) int32_t zoneId;
/**
 * Id of the room that contains the room variable.
 */
@property(nonatomic) int32_t roomId;
/**
 * Name of the room variable.
 */
@property(retain,nonatomic) NSString* name;
/**
 * Value of the room variable.
 */
@property(retain,nonatomic) EsObject* value;
/**
 * The locked value of the room variable. If locked the room variable cannot be modified until unlocked. It's cleanup behavior is unchanged.
 */
@property(nonatomic) BOOL locked;
/**
 * If true then the variable is only removed when manually deleted or when the room itself is removed. If false then the room variable is automatically removed when the 
 user that crated it leaves the room.
 */
@property(nonatomic) BOOL persistent;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftCreateRoomVariableRequest*) toThrift;
- (id) newThrift;
@end
