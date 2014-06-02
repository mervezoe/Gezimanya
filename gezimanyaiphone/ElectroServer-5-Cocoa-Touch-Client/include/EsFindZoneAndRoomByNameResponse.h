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
#import <ThriftFindZoneAndRoomByNameResponse.h>

/**
 * Knowing the name of a room and the name of a zone you can request the id of the room and the id of the zone. This request is FindZoneAndRoomByNameRequest and leads to this response.
 * 
 * This example shows how to request the id of a zone and room and capture the response.
 
 <pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.FindZoneAndRoomByNameResponse.name, onFindZoneAndRoomByNameResponse);

        var fzar:FindZoneAndRoomByNameRequest = new FindZoneAndRoomByNameRequest();
        fzar.roomName = "MyRoom";
        fzar.zoneName = "MyZone";

        _es.engine.send(fzar);
}

private function onFindZoneAndRoomByNameResponse(e:FindZoneAndRoomByNameResponse):void {
        trace("zoneId: " + e.roomAndZoneList[0].toString());
        trace("roomId: " + e.roomAndZoneList[1].toString());
}

 </pre>
 */
@interface EsFindZoneAndRoomByNameResponse : EsResponse {
@private
	BOOL roomAndZoneList_set_;
	NSMutableArray* roomAndZoneList_;
}

/**
 * Array of two values. The 0th element is the zoneId, the 1st element is the roomId. Both are integers.
 */
@property(retain,nonatomic) NSMutableArray* roomAndZoneList;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftFindZoneAndRoomByNameResponse*) toThrift;
- (id) newThrift;
@end
