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
#import <ThriftUpdateRoomDetailsEvent.h>

/**
 * Certain properties of a room can be updated by a user in that room after the room has been created. Once a property has changed all users in that room will recieve an UpdateRoomDetailsEvent. 
 The properties that can be updated are roomName, description, capacity, the password, and if the room is hidden or not.
 * 
 * This example shows how to update all possible properties and how to capture the event.
 
<pre>
private var _es:ElectroServer;
private var _room:Room;

private function initialize():void {
        _es.engine.addEventListener(MessageType.UpdateRoomDetailsEvent.name, onUpdateRoomDetailsEvent);

        var urdr:UpdateRoomDetailsRequest = new UpdateRoomDetailsRequest();
        urdr.roomId = _room.id;
        urdr.zoneId = _room.zoneId;

        urdr.roomNameUpdate = true;
        urdr.roomName = "New Room Name";

        urdr.descriptionUpdate = true;
        urdr.description = "new room description";

        urdr.capacityUpdate = true;
        urdr.capacity = 13;

        urdr.hiddenUpdate = true;
        urdr.hidden = true;

        urdr.passwordUpdate = true;
        urdr.password = "new password";

        _es.engine.send(urdr);
}

private function onUpdateRoomDetailsEvent(e:UpdateRoomDetailsEvent):void {
        if (e.roomNameUpdated) {
                trace("roomName: " + e.roomName);
        }
        if (e.descriptionUpdated) {
                trace("description: " + e.description);
        }
        if (e.hasPasswordUpdated) {
                trace("has password: " + e.hasPassword.toString());
        }
        if (e.hiddenUpdated) {
                trace("hidden: " + e.hidden.toString());
        }
        if (e.capacityUpdated) {
                trace("capacity: " + e.capacity.toString());
        }
}

</pre>
 */
@interface EsUpdateRoomDetailsEvent : EsEvent {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
	BOOL capacityUpdated_set_;
	BOOL capacityUpdated_;
	BOOL capacity_set_;
	int32_t capacity_;
	BOOL roomDescriptionUpdated_set_;
	BOOL roomDescriptionUpdated_;
	BOOL roomDescription_set_;
	NSString* roomDescription_;
	BOOL roomNameUpdated_set_;
	BOOL roomNameUpdated_;
	BOOL roomName_set_;
	NSString* roomName_;
	BOOL hasPassword_set_;
	BOOL hasPassword_;
	BOOL hasPasswordUpdated_set_;
	BOOL hasPasswordUpdated_;
	BOOL hiddenUpdated_set_;
	BOOL hiddenUpdated_;
	BOOL hidden_set_;
	BOOL hidden_;
}

/**
 * Id of the zone that contains the room whose properties were updated
 */
@property(nonatomic) int32_t zoneId;
/**
 * Id of the room whose properties were updated
 */
@property(nonatomic) int32_t roomId;
/**
 * If the capacity property was updated then this is true
 */
@property(nonatomic) BOOL capacityUpdated;
/**
 * New capacity value if capacityUpdated is true
 */
@property(nonatomic) int32_t capacity;
/**
 * If the description property was udpated then this is true
 */
@property(nonatomic) BOOL roomDescriptionUpdated;
/**
 * The new description property, if descriptionUpdated is true
 */
@property(retain,nonatomic) NSString* roomDescription;
/**
 * If the roomName was updated then this is true
 */
@property(nonatomic) BOOL roomNameUpdated;
/**
 * Contains a new roomName if the roomNameUpdated property is true
 */
@property(retain,nonatomic) NSString* roomName;
/**
 * If hasPasswordUpdated is true then this has a value
 */
@property(nonatomic) BOOL hasPassword;
/**
 * If the room's password status has changed then this is true and hasPassword has a value
 */
@property(nonatomic) BOOL hasPasswordUpdated;
/**
 * If the hidden property of the room has changed then this is true
 */
@property(nonatomic) BOOL hiddenUpdated;
/**
 * If the hiddenUpdated property is true then this has the new value of the hidden property
 */
@property(nonatomic) BOOL hidden;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftUpdateRoomDetailsEvent*) toThrift;
- (id) newThrift;
@end