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
#import <ThriftGetRoomsInZoneResponse.h>
#import <EsRoomListEntry.h>
#import <ThriftRoomListEntry.h>

/**
 * This the response to the GetRoomsInZoneRequest. This response contains a list of RoomListEntry object, each describing a room in that zone.
 * 
 * This example shows how to request the rooms in a zone, listen for the response to that request, and print out the results.
<pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.GetRoomsInZoneResponse.name, onGetRoomsInZoneResponse);

        var griz:GetRoomsInZoneRequest = new GetRoomsInZoneRequest();
        griz.zoneName = "GameZone";
        _es.engine.send(griz);
}

private function onGetRoomsInZoneResponse(e:GetRoomsInZoneResponse):void {
        trace("Zone: "+e.zoneName + ", " + e.zoneName.toString());
        for each (var rle:RoomListEntry in e.entries) {
                trace("Room: "+rle.roomName + ", " + rle.roomId.toString());
        }
}
</pre>
 */
@interface EsGetRoomsInZoneResponse : EsResponse {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL zoneName_set_;
	NSString* zoneName_;
	BOOL entries_set_;
	NSMutableArray* entries_;
}

/**
 * Id of the zone that contains these rooms.
 */
@property(nonatomic) int32_t zoneId;
/**
 * Name of the zone that contains these rooms.
 */
@property(retain,nonatomic) NSString* zoneName;
/**
 * List of RoomListEntry objects that describe the rooms in the zone.
 */
@property(retain,nonatomic) NSMutableArray* entries;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftGetRoomsInZoneResponse*) toThrift;
- (id) newThrift;
@end