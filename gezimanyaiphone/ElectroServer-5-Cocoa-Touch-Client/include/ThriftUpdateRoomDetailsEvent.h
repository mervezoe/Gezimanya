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


@interface ThriftUpdateRoomDetailsEvent : NSObject <NSCoding> {
  int32_t __zoneId;
  int32_t __roomId;
  BOOL __capacityUpdated;
  int32_t __capacity;
  BOOL __roomDescriptionUpdated;
  NSString * __roomDescription;
  BOOL __roomNameUpdated;
  NSString * __roomName;
  BOOL __hasPassword;
  BOOL __hasPasswordUpdated;
  BOOL __hiddenUpdated;
  BOOL __hidden;

  BOOL __zoneId_isset;
  BOOL __roomId_isset;
  BOOL __capacityUpdated_isset;
  BOOL __capacity_isset;
  BOOL __roomDescriptionUpdated_isset;
  BOOL __roomDescription_isset;
  BOOL __roomNameUpdated_isset;
  BOOL __roomName_isset;
  BOOL __hasPassword_isset;
  BOOL __hasPasswordUpdated_isset;
  BOOL __hiddenUpdated_isset;
  BOOL __hidden_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=zoneId, setter=setZoneId:) int32_t zoneId;
@property (nonatomic, getter=roomId, setter=setRoomId:) int32_t roomId;
@property (nonatomic, getter=capacityUpdated, setter=setCapacityUpdated:) BOOL capacityUpdated;
@property (nonatomic, getter=capacity, setter=setCapacity:) int32_t capacity;
@property (nonatomic, getter=roomDescriptionUpdated, setter=setRoomDescriptionUpdated:) BOOL roomDescriptionUpdated;
@property (nonatomic, retain, getter=roomDescription, setter=setRoomDescription:) NSString * roomDescription;
@property (nonatomic, getter=roomNameUpdated, setter=setRoomNameUpdated:) BOOL roomNameUpdated;
@property (nonatomic, retain, getter=roomName, setter=setRoomName:) NSString * roomName;
@property (nonatomic, getter=hasPassword, setter=setHasPassword:) BOOL hasPassword;
@property (nonatomic, getter=hasPasswordUpdated, setter=setHasPasswordUpdated:) BOOL hasPasswordUpdated;
@property (nonatomic, getter=hiddenUpdated, setter=setHiddenUpdated:) BOOL hiddenUpdated;
@property (nonatomic, getter=hidden, setter=setHidden:) BOOL hidden;
#endif

- (id) initWithZoneId: (int32_t) zoneId roomId: (int32_t) roomId capacityUpdated: (BOOL) capacityUpdated capacity: (int32_t) capacity roomDescriptionUpdated: (BOOL) roomDescriptionUpdated roomDescription: (NSString *) roomDescription roomNameUpdated: (BOOL) roomNameUpdated roomName: (NSString *) roomName hasPassword: (BOOL) hasPassword hasPasswordUpdated: (BOOL) hasPasswordUpdated hiddenUpdated: (BOOL) hiddenUpdated hidden: (BOOL) hidden;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (int32_t) zoneId;
- (void) setZoneId: (int32_t) zoneId;
- (BOOL) zoneIdIsSet;

- (int32_t) roomId;
- (void) setRoomId: (int32_t) roomId;
- (BOOL) roomIdIsSet;

- (BOOL) capacityUpdated;
- (void) setCapacityUpdated: (BOOL) capacityUpdated;
- (BOOL) capacityUpdatedIsSet;

- (int32_t) capacity;
- (void) setCapacity: (int32_t) capacity;
- (BOOL) capacityIsSet;

- (BOOL) roomDescriptionUpdated;
- (void) setRoomDescriptionUpdated: (BOOL) roomDescriptionUpdated;
- (BOOL) roomDescriptionUpdatedIsSet;

- (NSString *) roomDescription;
- (void) setRoomDescription: (NSString *) roomDescription;
- (BOOL) roomDescriptionIsSet;

- (BOOL) roomNameUpdated;
- (void) setRoomNameUpdated: (BOOL) roomNameUpdated;
- (BOOL) roomNameUpdatedIsSet;

- (NSString *) roomName;
- (void) setRoomName: (NSString *) roomName;
- (BOOL) roomNameIsSet;

- (BOOL) hasPassword;
- (void) setHasPassword: (BOOL) hasPassword;
- (BOOL) hasPasswordIsSet;

- (BOOL) hasPasswordUpdated;
- (void) setHasPasswordUpdated: (BOOL) hasPasswordUpdated;
- (BOOL) hasPasswordUpdatedIsSet;

- (BOOL) hiddenUpdated;
- (void) setHiddenUpdated: (BOOL) hiddenUpdated;
- (BOOL) hiddenUpdatedIsSet;

- (BOOL) hidden;
- (void) setHidden: (BOOL) hidden;
- (BOOL) hiddenIsSet;

@end

@interface ThriftUpdateRoomDetailsEventConstants : NSObject {
}
@end
