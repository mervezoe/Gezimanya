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


#import "ThriftDeleteUserVariableRequest.h"


@implementation ThriftDeleteUserVariableRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftDeleteUserVariableRequest

- (id) initWithName: (NSString *) name
{
  self = [super init];
  __name = [name retain];
  __name_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"name"])
  {
    __name = [[decoder decodeObjectForKey: @"name"] retain];
    __name_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__name_isset)
  {
    [encoder encodeObject: __name forKey: @"name"];
  }
}

- (void) dealloc
{
  [__name release];
  [super dealloc];
}

- (NSString *) name {
  return [[__name retain] autorelease];
}

- (void) setName: (NSString *) name {
  [name retain];
  [__name release];
  __name = name;
  __name_isset = YES;
}

- (BOOL) nameIsSet {
  return __name_isset;
}

- (void) unsetName {
  [__name release];
  __name = nil;
  __name_isset = NO;
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
          [self setName: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftDeleteUserVariableRequest"];
  if (__name_isset) {
    if (__name != nil) {
      [outProtocol writeFieldBeginWithName: @"name" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __name];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftDeleteUserVariableRequest("];
  [ms appendString: @"name:"];
  [ms appendFormat: @"\"%@\"", __name];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

