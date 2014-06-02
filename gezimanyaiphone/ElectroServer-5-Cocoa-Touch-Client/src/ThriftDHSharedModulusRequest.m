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


#import "ThriftDHSharedModulusRequest.h"


@implementation ThriftDHSharedModulusRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftDHSharedModulusRequest

- (id) initWithNumber: (NSString *) number
{
  self = [super init];
  __number = [number retain];
  __number_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"number"])
  {
    __number = [[decoder decodeObjectForKey: @"number"] retain];
    __number_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__number_isset)
  {
    [encoder encodeObject: __number forKey: @"number"];
  }
}

- (void) dealloc
{
  [__number release];
  [super dealloc];
}

- (NSString *) number {
  return [[__number retain] autorelease];
}

- (void) setNumber: (NSString *) number {
  [number retain];
  [__number release];
  __number = number;
  __number_isset = YES;
}

- (BOOL) numberIsSet {
  return __number_isset;
}

- (void) unsetNumber {
  [__number release];
  __number = nil;
  __number_isset = NO;
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
          [self setNumber: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftDHSharedModulusRequest"];
  if (__number_isset) {
    if (__number != nil) {
      [outProtocol writeFieldBeginWithName: @"number" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __number];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftDHSharedModulusRequest("];
  [ms appendString: @"number:"];
  [ms appendFormat: @"\"%@\"", __number];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

