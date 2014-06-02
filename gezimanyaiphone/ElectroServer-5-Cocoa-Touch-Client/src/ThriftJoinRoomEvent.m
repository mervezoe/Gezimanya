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

#import "ThriftFlattenedEsObject.h"
#import "ThriftRoomVariable.h"
#import "ThriftUserListEntry.h"
#import "ThriftUserVariable.h"

#import "ThriftJoinRoomEvent.h"


@implementation ThriftJoinRoomEventConstants
+ (void) initialize {
}
@end

@implementation ThriftJoinRoomEvent

- (id) initWithZoneId: (int32_t) zoneId roomId: (int32_t) roomId roomName: (NSString *) roomName roomDescription: (NSString *) roomDescription hasPassword: (BOOL) hasPassword hidden: (BOOL) hidden capacity: (int32_t) capacity users: (NSArray *) users roomVariables: (NSArray *) roomVariables
{
  self = [super init];
  __zoneId = zoneId;
  __zoneId_isset = YES;
  __roomId = roomId;
  __roomId_isset = YES;
  __roomName = [roomName retain];
  __roomName_isset = YES;
  __roomDescription = [roomDescription retain];
  __roomDescription_isset = YES;
  __hasPassword = hasPassword;
  __hasPassword_isset = YES;
  __hidden = hidden;
  __hidden_isset = YES;
  __capacity = capacity;
  __capacity_isset = YES;
  __users = [users retain];
  __users_isset = YES;
  __roomVariables = [roomVariables retain];
  __roomVariables_isset = YES;
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
  if ([decoder containsValueForKey: @"roomName"])
  {
    __roomName = [[decoder decodeObjectForKey: @"roomName"] retain];
    __roomName_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomDescription"])
  {
    __roomDescription = [[decoder decodeObjectForKey: @"roomDescription"] retain];
    __roomDescription_isset = YES;
  }
  if ([decoder containsValueForKey: @"hasPassword"])
  {
    __hasPassword = [decoder decodeBoolForKey: @"hasPassword"];
    __hasPassword_isset = YES;
  }
  if ([decoder containsValueForKey: @"hidden"])
  {
    __hidden = [decoder decodeBoolForKey: @"hidden"];
    __hidden_isset = YES;
  }
  if ([decoder containsValueForKey: @"capacity"])
  {
    __capacity = [decoder decodeInt32ForKey: @"capacity"];
    __capacity_isset = YES;
  }
  if ([decoder containsValueForKey: @"users"])
  {
    __users = [[decoder decodeObjectForKey: @"users"] retain];
    __users_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomVariables"])
  {
    __roomVariables = [[decoder decodeObjectForKey: @"roomVariables"] retain];
    __roomVariables_isset = YES;
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
  if (__roomName_isset)
  {
    [encoder encodeObject: __roomName forKey: @"roomName"];
  }
  if (__roomDescription_isset)
  {
    [encoder encodeObject: __roomDescription forKey: @"roomDescription"];
  }
  if (__hasPassword_isset)
  {
    [encoder encodeBool: __hasPassword forKey: @"hasPassword"];
  }
  if (__hidden_isset)
  {
    [encoder encodeBool: __hidden forKey: @"hidden"];
  }
  if (__capacity_isset)
  {
    [encoder encodeInt32: __capacity forKey: @"capacity"];
  }
  if (__users_isset)
  {
    [encoder encodeObject: __users forKey: @"users"];
  }
  if (__roomVariables_isset)
  {
    [encoder encodeObject: __roomVariables forKey: @"roomVariables"];
  }
}

- (void) dealloc
{
  [__roomName release];
  [__roomDescription release];
  [__users release];
  [__roomVariables release];
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

- (BOOL) hidden {
  return __hidden;
}

- (void) setHidden: (BOOL) hidden {
  __hidden = hidden;
  __hidden_isset = YES;
}

- (BOOL) hiddenIsSet {
  return __hidden_isset;
}

- (void) unsetHidden {
  __hidden_isset = NO;
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

- (NSArray *) users {
  return [[__users retain] autorelease];
}

- (void) setUsers: (NSArray *) users {
  [users retain];
  [__users release];
  __users = users;
  __users_isset = YES;
}

- (BOOL) usersIsSet {
  return __users_isset;
}

- (void) unsetUsers {
  [__users release];
  __users = nil;
  __users_isset = NO;
}

- (NSArray *) roomVariables {
  return [[__roomVariables retain] autorelease];
}

- (void) setRoomVariables: (NSArray *) roomVariables {
  [roomVariables retain];
  [__roomVariables release];
  __roomVariables = roomVariables;
  __roomVariables_isset = YES;
}

- (BOOL) roomVariablesIsSet {
  return __roomVariables_isset;
}

- (void) unsetRoomVariables {
  [__roomVariables release];
  __roomVariables = nil;
  __roomVariables_isset = NO;
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
          [self setRoomName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setRoomDescription: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setHasPassword: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 6:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setHidden: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 7:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setCapacity: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 8:
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            ThriftUserListEntry *_elem2 = [[ThriftUserListEntry alloc] init];
            [_elem2 read: inProtocol];
            [fieldValue addObject: _elem2];
            [_elem2 release];
          }
          [inProtocol readListEnd];
          [self setUsers: fieldValue];
          [fieldValue release];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 9:
        if (fieldType == TType_LIST) {
          int _size3;
          [inProtocol readListBeginReturningElementType: NULL size: &_size3];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size3];
          int _i4;
          for (_i4 = 0; _i4 < _size3; ++_i4)
          {
            ThriftRoomVariable *_elem5 = [[ThriftRoomVariable alloc] init];
            [_elem5 read: inProtocol];
            [fieldValue addObject: _elem5];
            [_elem5 release];
          }
          [inProtocol readListEnd];
          [self setRoomVariables: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftJoinRoomEvent"];
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
  if (__roomName_isset) {
    if (__roomName != nil) {
      [outProtocol writeFieldBeginWithName: @"roomName" type: TType_STRING fieldID: 3];
      [outProtocol writeString: __roomName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__roomDescription_isset) {
    if (__roomDescription != nil) {
      [outProtocol writeFieldBeginWithName: @"roomDescription" type: TType_STRING fieldID: 4];
      [outProtocol writeString: __roomDescription];
      [outProtocol writeFieldEnd];
    }
  }
  if (__hasPassword_isset) {
    [outProtocol writeFieldBeginWithName: @"hasPassword" type: TType_BOOL fieldID: 5];
    [outProtocol writeBool: __hasPassword];
    [outProtocol writeFieldEnd];
  }
  if (__hidden_isset) {
    [outProtocol writeFieldBeginWithName: @"hidden" type: TType_BOOL fieldID: 6];
    [outProtocol writeBool: __hidden];
    [outProtocol writeFieldEnd];
  }
  if (__capacity_isset) {
    [outProtocol writeFieldBeginWithName: @"capacity" type: TType_I32 fieldID: 7];
    [outProtocol writeI32: __capacity];
    [outProtocol writeFieldEnd];
  }
  if (__users_isset) {
    if (__users != nil) {
      [outProtocol writeFieldBeginWithName: @"users" type: TType_LIST fieldID: 8];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__users count]];
        int i7;
        for (i7 = 0; i7 < [__users count]; i7++)
        {
          [[__users objectAtIndex: i7] write: outProtocol];
        }
        [outProtocol writeListEnd];
      }
      [outProtocol writeFieldEnd];
    }
  }
  if (__roomVariables_isset) {
    if (__roomVariables != nil) {
      [outProtocol writeFieldBeginWithName: @"roomVariables" type: TType_LIST fieldID: 9];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__roomVariables count]];
        int i9;
        for (i9 = 0; i9 < [__roomVariables count]; i9++)
        {
          [[__roomVariables objectAtIndex: i9] write: outProtocol];
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
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftJoinRoomEvent("];
  [ms appendString: @"zoneId:"];
  [ms appendFormat: @"%i", __zoneId];
  [ms appendString: @",roomId:"];
  [ms appendFormat: @"%i", __roomId];
  [ms appendString: @",roomName:"];
  [ms appendFormat: @"\"%@\"", __roomName];
  [ms appendString: @",roomDescription:"];
  [ms appendFormat: @"\"%@\"", __roomDescription];
  [ms appendString: @",hasPassword:"];
  [ms appendFormat: @"%i", __hasPassword];
  [ms appendString: @",hidden:"];
  [ms appendFormat: @"%i", __hidden];
  [ms appendString: @",capacity:"];
  [ms appendFormat: @"%i", __capacity];
  [ms appendString: @",users:"];
  [ms appendFormat: @"%@", __users];
  [ms appendString: @",roomVariables:"];
  [ms appendFormat: @"%@", __roomVariables];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

