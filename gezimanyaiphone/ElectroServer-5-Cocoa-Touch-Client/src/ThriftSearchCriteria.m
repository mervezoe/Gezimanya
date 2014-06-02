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

#import "ThriftSearchCriteria.h"


@implementation ThriftSearchCriteriaConstants
+ (void) initialize {
}
@end

@implementation ThriftSearchCriteria

- (id) initWithGameId: (int32_t) gameId locked: (BOOL) locked lockedSet: (BOOL) lockedSet gameType: (NSString *) gameType gameDetails: (ThriftFlattenedEsObject *) gameDetails
{
  self = [super init];
  __gameId = gameId;
  __gameId_isset = YES;
  __locked = locked;
  __locked_isset = YES;
  __lockedSet = lockedSet;
  __lockedSet_isset = YES;
  __gameType = [gameType retain];
  __gameType_isset = YES;
  __gameDetails = [gameDetails retain];
  __gameDetails_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"gameId"])
  {
    __gameId = [decoder decodeInt32ForKey: @"gameId"];
    __gameId_isset = YES;
  }
  if ([decoder containsValueForKey: @"locked"])
  {
    __locked = [decoder decodeBoolForKey: @"locked"];
    __locked_isset = YES;
  }
  if ([decoder containsValueForKey: @"lockedSet"])
  {
    __lockedSet = [decoder decodeBoolForKey: @"lockedSet"];
    __lockedSet_isset = YES;
  }
  if ([decoder containsValueForKey: @"gameType"])
  {
    __gameType = [[decoder decodeObjectForKey: @"gameType"] retain];
    __gameType_isset = YES;
  }
  if ([decoder containsValueForKey: @"gameDetails"])
  {
    __gameDetails = [[decoder decodeObjectForKey: @"gameDetails"] retain];
    __gameDetails_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__gameId_isset)
  {
    [encoder encodeInt32: __gameId forKey: @"gameId"];
  }
  if (__locked_isset)
  {
    [encoder encodeBool: __locked forKey: @"locked"];
  }
  if (__lockedSet_isset)
  {
    [encoder encodeBool: __lockedSet forKey: @"lockedSet"];
  }
  if (__gameType_isset)
  {
    [encoder encodeObject: __gameType forKey: @"gameType"];
  }
  if (__gameDetails_isset)
  {
    [encoder encodeObject: __gameDetails forKey: @"gameDetails"];
  }
}

- (void) dealloc
{
  [__gameType release];
  [__gameDetails release];
  [super dealloc];
}

- (int32_t) gameId {
  return __gameId;
}

- (void) setGameId: (int32_t) gameId {
  __gameId = gameId;
  __gameId_isset = YES;
}

- (BOOL) gameIdIsSet {
  return __gameId_isset;
}

- (void) unsetGameId {
  __gameId_isset = NO;
}

- (BOOL) locked {
  return __locked;
}

- (void) setLocked: (BOOL) locked {
  __locked = locked;
  __locked_isset = YES;
}

- (BOOL) lockedIsSet {
  return __locked_isset;
}

- (void) unsetLocked {
  __locked_isset = NO;
}

- (BOOL) lockedSet {
  return __lockedSet;
}

- (void) setLockedSet: (BOOL) lockedSet {
  __lockedSet = lockedSet;
  __lockedSet_isset = YES;
}

- (BOOL) lockedSetIsSet {
  return __lockedSet_isset;
}

- (void) unsetLockedSet {
  __lockedSet_isset = NO;
}

- (NSString *) gameType {
  return [[__gameType retain] autorelease];
}

- (void) setGameType: (NSString *) gameType {
  [gameType retain];
  [__gameType release];
  __gameType = gameType;
  __gameType_isset = YES;
}

- (BOOL) gameTypeIsSet {
  return __gameType_isset;
}

- (void) unsetGameType {
  [__gameType release];
  __gameType = nil;
  __gameType_isset = NO;
}

- (ThriftFlattenedEsObject *) gameDetails {
  return [[__gameDetails retain] autorelease];
}

- (void) setGameDetails: (ThriftFlattenedEsObject *) gameDetails {
  [gameDetails retain];
  [__gameDetails release];
  __gameDetails = gameDetails;
  __gameDetails_isset = YES;
}

- (BOOL) gameDetailsIsSet {
  return __gameDetails_isset;
}

- (void) unsetGameDetails {
  [__gameDetails release];
  __gameDetails = nil;
  __gameDetails_isset = NO;
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
          [self setGameId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setLocked: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setLockedSet: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setGameType: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_STRUCT) {
          ThriftFlattenedEsObject *fieldValue = [[ThriftFlattenedEsObject alloc] init];
          [fieldValue read: inProtocol];
          [self setGameDetails: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftSearchCriteria"];
  if (__gameId_isset) {
    [outProtocol writeFieldBeginWithName: @"gameId" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __gameId];
    [outProtocol writeFieldEnd];
  }
  if (__locked_isset) {
    [outProtocol writeFieldBeginWithName: @"locked" type: TType_BOOL fieldID: 2];
    [outProtocol writeBool: __locked];
    [outProtocol writeFieldEnd];
  }
  if (__lockedSet_isset) {
    [outProtocol writeFieldBeginWithName: @"lockedSet" type: TType_BOOL fieldID: 3];
    [outProtocol writeBool: __lockedSet];
    [outProtocol writeFieldEnd];
  }
  if (__gameType_isset) {
    if (__gameType != nil) {
      [outProtocol writeFieldBeginWithName: @"gameType" type: TType_STRING fieldID: 4];
      [outProtocol writeString: __gameType];
      [outProtocol writeFieldEnd];
    }
  }
  if (__gameDetails_isset) {
    if (__gameDetails != nil) {
      [outProtocol writeFieldBeginWithName: @"gameDetails" type: TType_STRUCT fieldID: 5];
      [__gameDetails write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftSearchCriteria("];
  [ms appendString: @"gameId:"];
  [ms appendFormat: @"%i", __gameId];
  [ms appendString: @",locked:"];
  [ms appendFormat: @"%i", __locked];
  [ms appendString: @",lockedSet:"];
  [ms appendFormat: @"%i", __lockedSet];
  [ms appendString: @",gameType:"];
  [ms appendFormat: @"\"%@\"", __gameType];
  [ms appendString: @",gameDetails:"];
  [ms appendFormat: @"%@", __gameDetails];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

