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

#import "ThriftPluginMessageEvent.h"


@implementation ThriftPluginMessageEventConstants
+ (void) initialize {
}
@end

@implementation ThriftPluginMessageEvent

- (id) initWithPluginName: (NSString *) pluginName sentToRoom: (BOOL) sentToRoom destinationZoneId: (int32_t) destinationZoneId destinationRoomId: (int32_t) destinationRoomId roomLevelPlugin: (BOOL) roomLevelPlugin originZoneId: (int32_t) originZoneId originRoomId: (int32_t) originRoomId parameters: (ThriftFlattenedEsObject *) parameters
{
  self = [super init];
  __pluginName = [pluginName retain];
  __pluginName_isset = YES;
  __sentToRoom = sentToRoom;
  __sentToRoom_isset = YES;
  __destinationZoneId = destinationZoneId;
  __destinationZoneId_isset = YES;
  __destinationRoomId = destinationRoomId;
  __destinationRoomId_isset = YES;
  __roomLevelPlugin = roomLevelPlugin;
  __roomLevelPlugin_isset = YES;
  __originZoneId = originZoneId;
  __originZoneId_isset = YES;
  __originRoomId = originRoomId;
  __originRoomId_isset = YES;
  __parameters = [parameters retain];
  __parameters_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"pluginName"])
  {
    __pluginName = [[decoder decodeObjectForKey: @"pluginName"] retain];
    __pluginName_isset = YES;
  }
  if ([decoder containsValueForKey: @"sentToRoom"])
  {
    __sentToRoom = [decoder decodeBoolForKey: @"sentToRoom"];
    __sentToRoom_isset = YES;
  }
  if ([decoder containsValueForKey: @"destinationZoneId"])
  {
    __destinationZoneId = [decoder decodeInt32ForKey: @"destinationZoneId"];
    __destinationZoneId_isset = YES;
  }
  if ([decoder containsValueForKey: @"destinationRoomId"])
  {
    __destinationRoomId = [decoder decodeInt32ForKey: @"destinationRoomId"];
    __destinationRoomId_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomLevelPlugin"])
  {
    __roomLevelPlugin = [decoder decodeBoolForKey: @"roomLevelPlugin"];
    __roomLevelPlugin_isset = YES;
  }
  if ([decoder containsValueForKey: @"originZoneId"])
  {
    __originZoneId = [decoder decodeInt32ForKey: @"originZoneId"];
    __originZoneId_isset = YES;
  }
  if ([decoder containsValueForKey: @"originRoomId"])
  {
    __originRoomId = [decoder decodeInt32ForKey: @"originRoomId"];
    __originRoomId_isset = YES;
  }
  if ([decoder containsValueForKey: @"parameters"])
  {
    __parameters = [[decoder decodeObjectForKey: @"parameters"] retain];
    __parameters_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__pluginName_isset)
  {
    [encoder encodeObject: __pluginName forKey: @"pluginName"];
  }
  if (__sentToRoom_isset)
  {
    [encoder encodeBool: __sentToRoom forKey: @"sentToRoom"];
  }
  if (__destinationZoneId_isset)
  {
    [encoder encodeInt32: __destinationZoneId forKey: @"destinationZoneId"];
  }
  if (__destinationRoomId_isset)
  {
    [encoder encodeInt32: __destinationRoomId forKey: @"destinationRoomId"];
  }
  if (__roomLevelPlugin_isset)
  {
    [encoder encodeBool: __roomLevelPlugin forKey: @"roomLevelPlugin"];
  }
  if (__originZoneId_isset)
  {
    [encoder encodeInt32: __originZoneId forKey: @"originZoneId"];
  }
  if (__originRoomId_isset)
  {
    [encoder encodeInt32: __originRoomId forKey: @"originRoomId"];
  }
  if (__parameters_isset)
  {
    [encoder encodeObject: __parameters forKey: @"parameters"];
  }
}

- (void) dealloc
{
  [__pluginName release];
  [__parameters release];
  [super dealloc];
}

- (NSString *) pluginName {
  return [[__pluginName retain] autorelease];
}

- (void) setPluginName: (NSString *) pluginName {
  [pluginName retain];
  [__pluginName release];
  __pluginName = pluginName;
  __pluginName_isset = YES;
}

- (BOOL) pluginNameIsSet {
  return __pluginName_isset;
}

- (void) unsetPluginName {
  [__pluginName release];
  __pluginName = nil;
  __pluginName_isset = NO;
}

- (BOOL) sentToRoom {
  return __sentToRoom;
}

- (void) setSentToRoom: (BOOL) sentToRoom {
  __sentToRoom = sentToRoom;
  __sentToRoom_isset = YES;
}

- (BOOL) sentToRoomIsSet {
  return __sentToRoom_isset;
}

- (void) unsetSentToRoom {
  __sentToRoom_isset = NO;
}

- (int32_t) destinationZoneId {
  return __destinationZoneId;
}

- (void) setDestinationZoneId: (int32_t) destinationZoneId {
  __destinationZoneId = destinationZoneId;
  __destinationZoneId_isset = YES;
}

- (BOOL) destinationZoneIdIsSet {
  return __destinationZoneId_isset;
}

- (void) unsetDestinationZoneId {
  __destinationZoneId_isset = NO;
}

- (int32_t) destinationRoomId {
  return __destinationRoomId;
}

- (void) setDestinationRoomId: (int32_t) destinationRoomId {
  __destinationRoomId = destinationRoomId;
  __destinationRoomId_isset = YES;
}

- (BOOL) destinationRoomIdIsSet {
  return __destinationRoomId_isset;
}

- (void) unsetDestinationRoomId {
  __destinationRoomId_isset = NO;
}

- (BOOL) roomLevelPlugin {
  return __roomLevelPlugin;
}

- (void) setRoomLevelPlugin: (BOOL) roomLevelPlugin {
  __roomLevelPlugin = roomLevelPlugin;
  __roomLevelPlugin_isset = YES;
}

- (BOOL) roomLevelPluginIsSet {
  return __roomLevelPlugin_isset;
}

- (void) unsetRoomLevelPlugin {
  __roomLevelPlugin_isset = NO;
}

- (int32_t) originZoneId {
  return __originZoneId;
}

- (void) setOriginZoneId: (int32_t) originZoneId {
  __originZoneId = originZoneId;
  __originZoneId_isset = YES;
}

- (BOOL) originZoneIdIsSet {
  return __originZoneId_isset;
}

- (void) unsetOriginZoneId {
  __originZoneId_isset = NO;
}

- (int32_t) originRoomId {
  return __originRoomId;
}

- (void) setOriginRoomId: (int32_t) originRoomId {
  __originRoomId = originRoomId;
  __originRoomId_isset = YES;
}

- (BOOL) originRoomIdIsSet {
  return __originRoomId_isset;
}

- (void) unsetOriginRoomId {
  __originRoomId_isset = NO;
}

- (ThriftFlattenedEsObject *) parameters {
  return [[__parameters retain] autorelease];
}

- (void) setParameters: (ThriftFlattenedEsObject *) parameters {
  [parameters retain];
  [__parameters release];
  __parameters = parameters;
  __parameters_isset = YES;
}

- (BOOL) parametersIsSet {
  return __parameters_isset;
}

- (void) unsetParameters {
  [__parameters release];
  __parameters = nil;
  __parameters_isset = NO;
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
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setPluginName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setSentToRoom: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setDestinationZoneId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setDestinationRoomId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setRoomLevelPlugin: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 6:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setOriginZoneId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 7:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setOriginRoomId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 8:
        if (fieldType == TType_STRUCT) {
          ThriftFlattenedEsObject *fieldValue = [[ThriftFlattenedEsObject alloc] init];
          [fieldValue read: inProtocol];
          [self setParameters: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftPluginMessageEvent"];
  if (__pluginName_isset) {
    if (__pluginName != nil) {
      [outProtocol writeFieldBeginWithName: @"pluginName" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __pluginName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__sentToRoom_isset) {
    [outProtocol writeFieldBeginWithName: @"sentToRoom" type: TType_BOOL fieldID: 2];
    [outProtocol writeBool: __sentToRoom];
    [outProtocol writeFieldEnd];
  }
  if (__destinationZoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"destinationZoneId" type: TType_I32 fieldID: 3];
    [outProtocol writeI32: __destinationZoneId];
    [outProtocol writeFieldEnd];
  }
  if (__destinationRoomId_isset) {
    [outProtocol writeFieldBeginWithName: @"destinationRoomId" type: TType_I32 fieldID: 4];
    [outProtocol writeI32: __destinationRoomId];
    [outProtocol writeFieldEnd];
  }
  if (__roomLevelPlugin_isset) {
    [outProtocol writeFieldBeginWithName: @"roomLevelPlugin" type: TType_BOOL fieldID: 5];
    [outProtocol writeBool: __roomLevelPlugin];
    [outProtocol writeFieldEnd];
  }
  if (__originZoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"originZoneId" type: TType_I32 fieldID: 6];
    [outProtocol writeI32: __originZoneId];
    [outProtocol writeFieldEnd];
  }
  if (__originRoomId_isset) {
    [outProtocol writeFieldBeginWithName: @"originRoomId" type: TType_I32 fieldID: 7];
    [outProtocol writeI32: __originRoomId];
    [outProtocol writeFieldEnd];
  }
  if (__parameters_isset) {
    if (__parameters != nil) {
      [outProtocol writeFieldBeginWithName: @"parameters" type: TType_STRUCT fieldID: 8];
      [__parameters write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftPluginMessageEvent("];
  [ms appendString: @"pluginName:"];
  [ms appendFormat: @"\"%@\"", __pluginName];
  [ms appendString: @",sentToRoom:"];
  [ms appendFormat: @"%i", __sentToRoom];
  [ms appendString: @",destinationZoneId:"];
  [ms appendFormat: @"%i", __destinationZoneId];
  [ms appendString: @",destinationRoomId:"];
  [ms appendFormat: @"%i", __destinationRoomId];
  [ms appendString: @",roomLevelPlugin:"];
  [ms appendFormat: @"%i", __roomLevelPlugin];
  [ms appendString: @",originZoneId:"];
  [ms appendFormat: @"%i", __originZoneId];
  [ms appendString: @",originRoomId:"];
  [ms appendFormat: @"%i", __originRoomId];
  [ms appendString: @",parameters:"];
  [ms appendFormat: @"%@", __parameters];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

