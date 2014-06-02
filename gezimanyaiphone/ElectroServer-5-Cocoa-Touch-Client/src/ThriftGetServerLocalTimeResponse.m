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


#import "ThriftGetServerLocalTimeResponse.h"


@implementation ThriftGetServerLocalTimeResponseConstants
+ (void) initialize {
}
@end

@implementation ThriftGetServerLocalTimeResponse

- (id) initWithServerLocalTimeInMilliseconds: (int64_t) serverLocalTimeInMilliseconds
{
  self = [super init];
  __serverLocalTimeInMilliseconds = serverLocalTimeInMilliseconds;
  __serverLocalTimeInMilliseconds_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"serverLocalTimeInMilliseconds"])
  {
    __serverLocalTimeInMilliseconds = [decoder decodeInt64ForKey: @"serverLocalTimeInMilliseconds"];
    __serverLocalTimeInMilliseconds_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__serverLocalTimeInMilliseconds_isset)
  {
    [encoder encodeInt64: __serverLocalTimeInMilliseconds forKey: @"serverLocalTimeInMilliseconds"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (int64_t) serverLocalTimeInMilliseconds {
  return __serverLocalTimeInMilliseconds;
}

- (void) setServerLocalTimeInMilliseconds: (int64_t) serverLocalTimeInMilliseconds {
  __serverLocalTimeInMilliseconds = serverLocalTimeInMilliseconds;
  __serverLocalTimeInMilliseconds_isset = YES;
}

- (BOOL) serverLocalTimeInMillisecondsIsSet {
  return __serverLocalTimeInMilliseconds_isset;
}

- (void) unsetServerLocalTimeInMilliseconds {
  __serverLocalTimeInMilliseconds_isset = NO;
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
          [self setServerLocalTimeInMilliseconds: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftGetServerLocalTimeResponse"];
  if (__serverLocalTimeInMilliseconds_isset) {
    [outProtocol writeFieldBeginWithName: @"serverLocalTimeInMilliseconds" type: TType_I64 fieldID: 1];
    [outProtocol writeI64: __serverLocalTimeInMilliseconds];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftGetServerLocalTimeResponse("];
  [ms appendString: @"serverLocalTimeInMilliseconds:"];
  [ms appendFormat: @"%qi", __serverLocalTimeInMilliseconds];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

