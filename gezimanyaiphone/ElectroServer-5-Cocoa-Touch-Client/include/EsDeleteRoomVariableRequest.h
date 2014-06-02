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
#import <ThriftDeleteRoomVariableRequest.h>

/**
 * This request deletes a room variable. 
 A room variable is a name/value pair scoped to a room and managed on the server. The value is an EsObject. Room variables are accessible via the client also. A room variable can be created, 
 updated, or removed by a client or by a server extension. In addition to the name and value a room variable has two other properties: locked and persistent, both booleans. If locked is true 
 then the variable cannot be modified until unlocked. If persistent is true then the variable stays alive until manually deleted or the room dies. If persistent is false then the variable 
 dies when the user that creates it leaves the room, or if it is manually removed. In addition to being deleted by this request, room variables can also be deleted (and modified) by the server.
 * 
 * This shows how to delete a room variable and watch for the RoomVariableUpdateEvent.
 
 <pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.RoomVariableUpdateEvent.name, onRoomVariableUpdateEvent);

        testDeleteRoomVariable();
}

private function testDeleteRoomVariable():void {
        //create the request object and populate with data
        var drvr:DeleteRoomVariableRequest = new DeleteRoomVariableRequest();
        drvr.name = "background";

        //send it
        _es.engine.send(drvr);
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
@interface EsDeleteRoomVariableRequest : EsRequest {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL name_set_;
	NSString* name_;
}

/**
 * The id of the zone that owns the room.
 */
@property(nonatomic) int32_t zoneId;
/**
 * The id of the room that owns the room variable.
 */
@property(nonatomic) int32_t roomId;
/**
 * The name of the room variable.
 */
@property(retain,nonatomic) NSString* name;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftDeleteRoomVariableRequest*) toThrift;
- (id) newThrift;
@end
