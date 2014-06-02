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


#import "ThriftGatewayStatistics.h"


@implementation ThriftGatewayStatisticsConstants
+ (void) initialize {
}
@end

@implementation ThriftGatewayStatistics

- (id) initWithBytesInTotal: (int64_t) bytesInTotal bytesOutTotal: (int64_t) bytesOutTotal messagesInTotal: (int64_t) messagesInTotal messagesOutTotal: (int64_t) messagesOutTotal
{
  self = [super init];
  __bytesInTotal = bytesInTotal;
  __bytesInTotal_isset = YES;
  __bytesOutTotal = bytesOutTotal;
  __bytesOutTotal_isset = YES;
  __messagesInTotal = messagesInTotal;
  __messagesInTotal_isset = YES;
  __messagesOutTotal = messagesOutTotal;
  __messagesOutTotal_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"bytesInTotal"])
  {
    __bytesInTotal = [decoder decodeInt64ForKey: @"bytesInTotal"];
    __bytesInTotal_isset = YES;
  }
  if ([decoder containsValueForKey: @"bytesOutTotal"])
  {
    __bytesOutTotal = [decoder decodeInt64ForKey: @"bytesOutTotal"];
    __bytesOutTotal_isset = YES;
  }
  if ([decoder containsValueForKey: @"messagesInTotal"])
  {
    __messagesInTotal = [decoder decodeInt64ForKey: @"messagesInTotal"];
    __messagesInTotal_isset = YES;
  }
  if ([decoder containsValueForKey: @"messagesOutTotal"])
  {
    __messagesOutTotal = [decoder decodeInt64ForKey: @"messagesOutTotal"];
    __messagesOutTotal_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__bytesInTotal_isset)
  {
    [encoder encodeInt64: __bytesInTotal forKey: @"bytesInTotal"];
  }
  if (__bytesOutTotal_isset)
  {
    [encoder encodeInt64: __bytesOutTotal forKey: @"bytesOutTotal"];
  }
  if (__messagesInTotal_isset)
  {
    [encoder encodeInt64: __messagesInTotal forKey: @"messagesInTotal"];
  }
  if (__messagesOutTotal_isset)
  {
    [encoder encodeInt64: __messagesOutTotal forKey: @"messagesOutTotal"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (int64_t) bytesInTotal {
  return __bytesInTotal;
}

- (void) setBytesInTotal: (int64_t) bytesInTotal {
  __bytesInTotal = bytesInTotal;
  __bytesInTotal_isset = YES;
}

- (BOOL) bytesInTotalIsSet {
  return __bytesInTotal_isset;
}

- (void) unsetBytesInTotal {
  __bytesInTotal_isset = NO;
}

- (int64_t) bytesOutTotal {
  return __bytesOutTotal;
}

- (void) setBytesOutTotal: (int64_t) bytesOutTotal {
  __bytesOutTotal = bytesOutTotal;
  __bytesOutTotal_isset = YES;
}

- (BOOL) bytesOutTotalIsSet {
  return __bytesOutTotal_isset;
}

- (void) unsetBytesOutTotal {
  __bytesOutTotal_isset = NO;
}

- (int64_t) messagesInTotal {
  return __messagesInTotal;
}

- (void) setMessagesInTotal: (int64_t) messagesInTotal {
  __messagesInTotal = messagesInTotal;
  __messagesInTotal_isset = YES;
}

- (BOOL) messagesInTotalIsSet {
  return __messagesInTotal_isset;
}

- (void) unsetMessagesInTotal {
  __messagesInTotal_isset = NO;
}

- (int64_t) messagesOutTotal {
  return __messagesOutTotal;
}

- (void) setMessagesOutTotal: (int64_t) messagesOutTotal {
  __messagesOutTotal = messagesOutTotal;
  __messagesOutTotal_isset = YES;
}

- (BOOL) messagesOutTotalIsSet {
  return __messagesOutTotal_isset;
}

- (void) unsetMessagesOutTotal {
  __messagesOutTotal_isset = NO;
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
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setBytesInTotal: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setBytesOutTotal: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setMessagesInTotal: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setMessagesOutTotal: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftGatewayStatistics"];
  if (__bytesInTotal_isset) {
    [outProtocol writeFieldBeginWithName: @"bytesInTotal" type: TType_I64 fieldID: 1];
    [outProtocol writeI64: __bytesInTotal];
    [outProtocol writeFieldEnd];
  }
  if (__bytesOutTotal_isset) {
    [outProtocol writeFieldBeginWithName: @"bytesOutTotal" type: TType_I64 fieldID: 2];
    [outProtocol writeI64: __bytesOutTotal];
    [outProtocol writeFieldEnd];
  }
  if (__messagesInTotal_isset) {
    [outProtocol writeFieldBeginWithName: @"messagesInTotal" type: TType_I64 fieldID: 3];
    [outProtocol writeI64: __messagesInTotal];
    [outProtocol writeFieldEnd];
  }
  if (__messagesOutTotal_isset) {
    [outProtocol writeFieldBeginWithName: @"messagesOutTotal" type: TType_I64 fieldID: 4];
    [outProtocol writeI64: __messagesOutTotal];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftGatewayStatistics("];
  [ms appendString: @"bytesInTotal:"];
  [ms appendFormat: @"%qi", __bytesInTotal];
  [ms appendString: @",bytesOutTotal:"];
  [ms appendFormat: @"%qi", __bytesOutTotal];
  [ms appendString: @",messagesInTotal:"];
  [ms appendFormat: @"%qi", __messagesInTotal];
  [ms appendString: @",messagesOutTotal:"];
  [ms appendFormat: @"%qi", __messagesOutTotal];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

