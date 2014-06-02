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


#import "ThriftUserEvictedFromRoomEvent.h"


@implementation ThriftUserEvictedFromRoomEventConstants
+ (void) initialize {
}
@end

@implementation ThriftUserEvictedFromRoomEvent

- (id) initWithZoneId: (int32_t) zoneId roomId: (int32_t) roomId userName: (NSString *) userName reason: (NSString *) reason ban: (BOOL) ban duration: (int32_t) duration
{
  self = [super init];
  __zoneId = zoneId;
  __zoneId_isset = YES;
  __roomId = roomId;
  __roomId_isset = YES;
  __userName = [userName retain];
  __userName_isset = YES;
  __reason = [reason retain];
  __reason_isset = YES;
  __ban = ban;
  __ban_isset = YES;
  __duration = duration;
  __duration_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"zoneId"])
  {
    __zoneId = [decoder decodeInt32ForKey: @"zoneId"];
    __zoneId_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomId"])
  {
    __roomId = [decoder decodeInt32ForKey: @"roomId"];
    __roomId_isset = YES;
  }
  if ([decoder containsValueForKey: @"userName"])
  {
    __userName = [[decoder decodeObjectForKey: @"userName"] retain];
    __userName_isset = YES;
  }
  if ([decoder containsValueForKey: @"reason"])
  {
    __reason = [[decoder decodeObjectForKey: @"reason"] retain];
    __reason_isset = YES;
  }
  if ([decoder containsValueForKey: @"ban"])
  {
    __ban = [decoder decodeBoolForKey: @"ban"];
    __ban_isset = YES;
  }
  if ([decoder containsValueForKey: @"duration"])
  {
    __duration = [decoder decodeInt32ForKey: @"duration"];
    __duration_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__zoneId_isset)
  {
    [encoder encodeInt32: __zoneId forKey: @"zoneId"];
  }
  if (__roomId_isset)
  {
    [encoder encodeInt32: __roomId forKey: @"roomId"];
  }
  if (__userName_isset)
  {
    [encoder encodeObject: __userName forKey: @"userName"];
  }
  if (__reason_isset)
  {
    [encoder encodeObject: __reason forKey: @"reason"];
  }
  if (__ban_isset)
  {
    [encoder encodeBool: __ban forKey: @"ban"];
  }
  if (__duration_isset)
  {
    [encoder encodeInt32: __duration forKey: @"duration"];
  }
}

- (void) dealloc
{
  [__userName release];
  [__reason release];
  [super dealloc];
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

- (NSString *) userName {
  return [[__userName retain] autorelease];
}

- (void) setUserName: (NSString *) userName {
  [userName retain];
  [__userName release];
  __userName = userName;
  __userName_isset = YES;
}

- (BOOL) userNameIsSet {
  return __userName_isset;
}

- (void) unsetUserName {
  [__userName release];
  __userName = nil;
  __userName_isset = NO;
}

- (NSString *) reason {
  return [[__reason retain] autorelease];
}

- (void) setReason: (NSString *) reason {
  [reason retain];
  [__reason release];
  __reason = reason;
  __reason_isset = YES;
}

- (BOOL) reasonIsSet {
  return __reason_isset;
}

- (void) unsetReason {
  [__reason release];
  __reason = nil;
  __reason_isset = NO;
}

- (BOOL) ban {
  return __ban;
}

- (void) setBan: (BOOL) ban {
  __ban = ban;
  __ban_isset = YES;
}

- (BOOL) banIsSet {
  return __ban_isset;
}

- (void) unsetBan {
  __ban_isset = NO;
}

- (int32_t) duration {
  return __duration;
}

- (void) setDuration: (int32_t) duration {
  __duration = duration;
  __duration_isset = YES;
}

- (BOOL) durationIsSet {
  return __duration_isset;
}

- (void) unsetDuration {
  __duration_isset = NO;
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
          [self setZoneId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setRoomId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setUserName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setReason: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setBan: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 6:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setDuration: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftUserEvictedFromRoomEvent"];
  if (__zoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"zoneId" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __zoneId];
    [outProtocol writeFieldEnd];
  }
  if (__roomId_isset) {
    [outProtocol writeFieldBeginWithName: @"roomId" type: TType_I32 fieldID: 2];
    [outProtocol writeI32: __roomId];
    [outProtocol writeFieldEnd];
  }
  if (__userName_isset) {
    if (__userName != nil) {
      [outProtocol writeFieldBeginWithName: @"userName" type: TType_STRING fieldID: 3];
      [outProtocol writeString: __userName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__reason_isset) {
    if (__reason != nil) {
      [outProtocol writeFieldBeginWithName: @"reason" type: TType_STRING fieldID: 4];
      [outProtocol writeString: __reason];
      [outProtocol writeFieldEnd];
    }
  }
  if (__ban_isset) {
    [outProtocol writeFieldBeginWithName: @"ban" type: TType_BOOL fieldID: 5];
    [outProtocol writeBool: __ban];
    [outProtocol writeFieldEnd];
  }
  if (__duration_isset) {
    [outProtocol writeFieldBeginWithName: @"duration" type: TType_I32 fieldID: 6];
    [outProtocol writeI32: __duration];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftUserEvictedFromRoomEvent("];
  [ms appendString: @"zoneId:"];
  [ms appendFormat: @"%i", __zoneId];
  [ms appendString: @",roomId:"];
  [ms appendFormat: @"%i", __roomId];
  [ms appendString: @",userName:"];
  [ms appendFormat: @"\"%@\"", __userName];
  [ms appendString: @",reason:"];
  [ms appendFormat: @"\"%@\"", __reason];
  [ms appendString: @",ban:"];
  [ms appendFormat: @"%i", __ban];
  [ms appendString: @",duration:"];
  [ms appendFormat: @"%i", __duration];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

