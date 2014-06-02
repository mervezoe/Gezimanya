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

#import "ThriftUpdateUserVariableRequest.h"


@implementation ThriftUpdateUserVariableRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftUpdateUserVariableRequest

- (id) initWithName: (NSString *) name value: (ThriftFlattenedEsObject *) value
{
  self = [super init];
  __name = [name retain];
  __name_isset = YES;
  __value = [value retain];
  __value_isset = YES;
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
  if ([decoder containsValueForKey: @"value"])
  {
    __value = [[decoder decodeObjectForKey: @"value"] retain];
    __value_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__name_isset)
  {
    [encoder encodeObject: __name forKey: @"name"];
  }
  if (__value_isset)
  {
    [encoder encodeObject: __value forKey: @"value"];
  }
}

//- (void) dealloc
//{
  //[__name release];
  //[__value release];
  //[super dealloc];
//}

- (NSString *) name {
  return [[__name retain] autorelease];
}

- (void) setName: (NSString *) name {
  [name retain];
  //[__name release];
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

- (ThriftFlattenedEsObject *) value {
  return [[__value retain] autorelease];
}

- (void) setValue: (ThriftFlattenedEsObject *) value {
  [value retain];
  [__value release];
  __value = value;
  __value_isset = YES;
}

- (BOOL) valueIsSet {
  return __value_isset;
}

- (void) unsetValue {
  [__value release];
  __value = nil;
  __value_isset = NO;
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
      case 2:
        if (fieldType == TType_STRUCT) {
          ThriftFlattenedEsObject *fieldValue = [[ThriftFlattenedEsObject alloc] init];
          [fieldValue read: inProtocol];
          [self setValue: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftUpdateUserVariableRequest"];
  if (__name_isset) {
    if (__name != nil) {
      [outProtocol writeFieldBeginWithName: @"name" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __name];
      [outProtocol writeFieldEnd];
    }
  }
  if (__value_isset) {
    if (__value != nil) {
      [outProtocol writeFieldBeginWithName: @"value" type: TType_STRUCT fieldID: 2];
      [__value write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftUpdateUserVariableRequest("];
  [ms appendString: @"name:"];
  [ms appendFormat: @"\"%@\"", __name];
  [ms appendString: @",value:"];
  [ms appendFormat: @"%@", __value];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

