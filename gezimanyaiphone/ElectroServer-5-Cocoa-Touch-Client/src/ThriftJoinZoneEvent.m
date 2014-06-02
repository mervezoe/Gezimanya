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

#import "ThriftJoinZoneEvent.h"


@implementation ThriftJoinZoneEventConstants
+ (void) initialize {
}
@end

@implementation ThriftJoinZoneEvent

- (id) initWithZoneId: (int32_t) zoneId zoneName: (NSString *) zoneName rooms: (NSArray *) rooms
{
  self = [super init];
  __zoneId = zoneId;
  __zoneId_isset = YES;
  __zoneName = [zoneName retain];
  __zoneName_isset = YES;
  __rooms = [rooms retain];
  __rooms_isset = YES;
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
  if ([decoder containsValueForKey: @"zoneName"])
  {
    __zoneName = [[decoder decodeObjectForKey: @"zoneName"] retain];
    __zoneName_isset = YES;
  }
  if ([decoder containsValueForKey: @"rooms"])
  {
    __rooms = [[decoder decodeObjectForKey: @"rooms"] retain];
    __rooms_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__zoneId_isset)
  {
    [encoder encodeInt32: __zoneId forKey: @"zoneId"];
  }
  if (__zoneName_isset)
  {
    [encoder encodeObject: __zoneName forKey: @"zoneName"];
  }
  if (__rooms_isset)
  {
    [encoder encodeObject: __rooms forKey: @"rooms"];
  }
}

- (void) dealloc
{
  [__zoneName release];
  [__rooms release];
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

- (NSString *) zoneName {
  return [[__zoneName retain] autorelease];
}

- (void) setZoneName: (NSString *) zoneName {
  [zoneName retain];
  [__zoneName release];
  __zoneName = zoneName;
  __zoneName_isset = YES;
}

- (BOOL) zoneNameIsSet {
  return __zoneName_isset;
}

- (void) unsetZoneName {
  [__zoneName release];
  __zoneName = nil;
  __zoneName_isset = NO;
}

- (NSArray *) rooms {
  return [[__rooms retain] autorelease];
}

- (void) setRooms: (NSArray *) rooms {
  [rooms retain];
  [__rooms release];
  __rooms = rooms;
  __rooms_isset = YES;
}

- (BOOL) roomsIsSet {
  return __rooms_isset;
}

- (void) unsetRooms {
  [__rooms release];
  __rooms = nil;
  __rooms_isset = NO;
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
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setZoneName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            ThriftRoomListEntry *_elem2 = [[ThriftRoomListEntry alloc] init];
            [_elem2 read: inProtocol];
            [fieldValue addObject: _elem2];
            [_elem2 release];
          }
          [inProtocol readListEnd];
          [self setRooms: fieldValue];
          [fieldValue release];
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
  [outProtocol writeStructBeginWithName: @"ThriftJoinZoneEvent"];
  if (__zoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"zoneId" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __zoneId];
    [outProtocol writeFieldEnd];
  }
  if (__zoneName_isset) {
    if (__zoneName != nil) {
      [outProtocol writeFieldBeginWithName: @"zoneName" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __zoneName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__rooms_isset) {
    if (__rooms != nil) {
      [outProtocol writeFieldBeginWithName: @"rooms" type: TType_LIST fieldID: 3];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__rooms count]];
        int i4;
        for (i4 = 0; i4 < [__rooms count]; i4++)
        {
          [[__rooms objectAtIndex: i4] write: outProtocol];
        }
        [outProtocol writeListEnd];
      }
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftJoinZoneEvent("];
  [ms appendString: @"zoneId:"];
  [ms appendFormat: @"%i", __zoneId];
  [ms appendString: @",zoneName:"];
  [ms appendFormat: @"\"%@\"", __zoneName];
  [ms appendString: @",rooms:"];
  [ms appendFormat: @"%@", __rooms];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

