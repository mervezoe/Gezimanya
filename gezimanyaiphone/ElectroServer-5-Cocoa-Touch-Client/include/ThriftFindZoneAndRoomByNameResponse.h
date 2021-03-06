/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */

#import <Foundation/Foundation.h>

#import <TProtocol.h>
#import <TApplicationException.h>
#import <TProtocolUtil.h>
#import <TProcessor.h>


@interface ThriftFindZoneAndRoomByNameResponse : NSObject <NSCoding> {
  NSArray * __roomAndZoneList;

  BOOL __roomAndZoneList_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=roomAndZoneList, setter=setRoomAndZoneList:) NSArray * roomAndZoneList;
#endif

- (id) initWithRoomAndZoneList: (NSArray *) roomAndZoneList;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSArray *) roomAndZoneList;
- (void) setRoomAndZoneList: (NSArray *) roomAndZoneList;
- (BOOL) roomAndZoneListIsSet;

@end

@interface ThriftFindZoneAndRoomByNameResponseConstants : NSObject {
}
@end
