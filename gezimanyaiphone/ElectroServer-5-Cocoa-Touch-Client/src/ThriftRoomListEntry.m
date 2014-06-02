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


#import "ThriftRoomListEntry.h"


@implementation ThriftRoomListEntryConstants
+ (void) initialize {
}
@end

@implementation ThriftRoomListEntry

- (id) initWithRoomId: (int32_t) roomId zoneId: (int32_t) zoneId roomName: (NSString *) roomName userCount: (int32_t) userCount roomDescription: (NSString *) roomDescription capacity: (int32_t) capacity hasPassword: (BOOL) hasPassword
{
  self = [super init];
  __roomId = roomId;
  __roomId_isset = YES;
  __zoneId = zoneId;
  __zoneId_isset = YES;
  __roomName = [roomName retain];
  __roomName_isset = YES;
  __userCount = userCount;
  __userCount_isset = YES;
  __roomDescription = [roomDescription retain];
  __roomDescription_isset = YES;
  __capacity = capacity;
  __capacity_isset = YES;
  __hasPassword = hasPassword;
  __hasPassword_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"roomId"])
  {
    __roomId = [decoder decodeInt32ForKey: @"roomId"];
    __roomId_isset = YES;
  }
  if ([decoder containsValueForKey: @"zoneId"])
  {
    __zoneId = [decoder decodeInt32ForKey: @"zoneId"];
    __zoneId_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomName"])
  {
    __roomName = [[decoder decodeObjectForKey: @"roomName"] retain];
    __roomName_isset = YES;
  }
  if ([decoder containsValueForKey: @"userCount"])
  {
    __userCount = [decoder decodeInt32ForKey: @"userCount"];
    __userCount_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomDescription"])
  {
    __roomDescription = [[decoder decodeObjectForKey: @"roomDescription"] retain];
    __roomDescription_isset = YES;
  }
  if ([decoder containsValueForKey: @"capacity"])
  {
    __capacity = [decoder decodeInt32ForKey: @"capacity"];
    __capacity_isset = YES;
  }
  if ([decoder containsValueForKey: @"hasPassword"])
  {
    __hasPassword = [decoder decodeBoolForKey: @"hasPassword"];
    __hasPassword_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__roomId_isset)
  {
    [encoder encodeInt32: __roomId forKey: @"roomId"];
  }
  if (__zoneId_isset)
  {
    [encoder encodeInt32: __zoneId forKey: @"zoneId"];
  }
  if (__roomName_isset)
  {
    [encoder encodeObject: __roomName forKey: @"roomName"];
  }
  if (__userCount_isset)
  {
    [encoder encodeInt32: __userCount forKey: @"userCount"];
  }
  if (__roomDescription_isset)
  {
    [encoder encodeObject: __roomDescription forKey: @"roomDescription"];
  }
  if (__capacity_isset)
  {
    [encoder encodeInt32: __capacity forKey: @"capacity"];
  }
  if (__hasPassword_isset)
  {
    [encoder encodeBool: __hasPassword forKey: @"hasPassword"];
  }
}

- (void) dealloc
{
  [__roomName release];
  [__roomDescription release];
  [super dealloc];
}

- (int32_t) roomId {
  return __roomId;
}

- (void) setRoomId: (int32_t) roomId {
  __roomId = roomId;
  __roomId_isset = YES;
}

- (BOOL) roomIdIsSet {
  return __roomId_isset;
}

- (void) unsetRoomId {
  __roomId_isset = NO;
}

- (int32_t) zoneId {
  return __zoneId;
}

- (void) setZoneId: (int32_t) zoneId {
  __zoneId = zoneId;
  __zoneId_isset = YES;
}

- (BOOL) zoneIdIsSet {
  return __zoneId_isset;
}

- (void) unsetZoneId {
  __zoneId_isset = NO;
}

- (NSString *) roomName {
  return [[__roomName retain] autorelease];
}

- (void) setRoomName: (NSString *) roomName {
  [roomName retain];
  [__roomName release];
  __roomName = roomName;
  __roomName_isset = YES;
}

- (BOOL) roomNameIsSet {
  return __roomName_isset;
}

- (void) unsetRoomName {
  [__roomName release];
  __roomName = nil;
  __roomName_isset = NO;
}

- (int32_t) userCount {
  return __userCount;
}

- (void) setUserCount: (int32_t) userCount {
  __userCount = userCount;
  __userCount_isset = YES;
}

- (BOOL) userCountIsSet {
  return __userCount_isset;
}

- (void) unsetUserCount {
  __userCount_isset = NO;
}

- (NSString *) roomDescription {
  return [[__roomDescription retain] autorelease];
}

- (void) setRoomDescription: (NSString *) roomDescription {
  [roomDescription retain];
  [__roomDescription release];
  __roomDescription = roomDescription;
  __roomDescription_isset = YES;
}

- (BOOL) roomDescriptionIsSet {
  return __roomDescription_isset;
}

- (void) unsetRoomDescription {
  [__roomDescription release];
  __roomDescription = nil;
  __roomDescription_isset = NO;
}

- (int32_t) capacity {
  return __capacity;
}

- (void) setCapacity: (int32_t) capacity {
  __capacity = capacity;
  __capacity_isset = YES;
}

- (BOOL) capacityIsSet {
  return __capacity_isset;
}

- (void) unsetCapacity {
  __capacity_isset = NO;
}

- (BOOL) hasPassword {
  return __hasPassword;
}

- (void) setHasPassword: (BOOL) hasPassword {
  __hasPassword = hasPassword;
  __hasPassword_isset = YES;
}

- (BOOL) hasPasswordIsSet {
  return __hasPassword_isset;
}

- (void) unsetHasPassword {
  __hasPassword_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setRoomId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setZoneId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setRoomName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setUserCount: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setRoomDescription: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 6:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setCapacity: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 7:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setHasPassword: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"ThriftRoomListEntry"];
  if (__roomId_isset) {
    [outProtocol writeFieldBeginWithName: @"roomId" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __roomId];
    [outProtocol writeFieldEnd];
  }
  if (__zoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"zoneId" type: TType_I32 fieldID: 2];
    [outProtocol writeI32: __zoneId];
    [outProtocol writeFieldEnd];
  }
  if (__roomName_isset) {
    if (__roomName != nil) {
      [outProtocol writeFieldBeginWithName: @"roomName" type: TType_STRING fieldID: 3];
      [outProtocol writeString: __roomName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__userCount_isset) {
    [outProtocol writeFieldBeginWithName: @"userCount" type: TType_I32 fieldID: 4];
    [outProtocol writeI32: __userCount];
    [outProtocol writeFieldEnd];
  }
  if (__roomDescription_isset) {
    if (__roomDescription != nil) {
      [outProtocol writeFieldBeginWithName: @"roomDescription" type: TType_STRING fieldID: 5];
      [outProtocol writeString: __roomDescription];
      [outProtocol writeFieldEnd];
    }
  }
  if (__capacity_isset) {
    [outProtocol writeFieldBeginWithName: @"capacity" type: TType_I32 fieldID: 6];
    [outProtocol writeI32: __capacity];
    [outProtocol writeFieldEnd];
  }
  if (__hasPassword_isset) {
    [outProtocol writeFieldBeginWithName: @"hasPassword" type: TType_BOOL fieldID: 7];
    [outProtocol writeBool: __hasPassword];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftRoomListEntry("];
  [ms appendString: @"roomId:"];
  [ms appendFormat: @"%i", __roomId];
  [ms appendString: @",zoneId:"];
  [ms appendFormat: @"%i", __zoneId];
  [ms appendString: @",roomName:"];
  [ms appendFormat: @"\"%@\"", __roomName];
  [ms appendString: @",userCount:"];
  [ms appendFormat: @"%i", __userCount];
  [ms appendString: @",roomDescription:"];
  [ms appendFormat: @"\"%@\"", __roomDescription];
  [ms appendString: @",capacity:"];
  [ms appendFormat: @"%i", __capacity];
  [ms appendString: @",hasPassword:"];
  [ms appendFormat: @"%i", __hasPassword];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

