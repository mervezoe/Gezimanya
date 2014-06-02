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
#import "ThriftRequestDetails.h"

#import "ThriftAggregatePluginRequest.h"


@implementation ThriftAggregatePluginRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftAggregatePluginRequest

- (id) initWithPluginRequestArray: (NSArray *) pluginRequestArray
{
  self = [super init];
  __pluginRequestArray = [pluginRequestArray retain];
  __pluginRequestArray_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"pluginRequestArray"])
  {
    __pluginRequestArray = [[decoder decodeObjectForKey: @"pluginRequestArray"] retain];
    __pluginRequestArray_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__pluginRequestArray_isset)
  {
    [encoder encodeObject: __pluginRequestArray forKey: @"pluginRequestArray"];
  }
}

- (void) dealloc
{
  [__pluginRequestArray release];
  [super dealloc];
}

- (NSArray *) pluginRequestArray {
  return [[__pluginRequestArray retain] autorelease];
}

- (void) setPluginRequestArray: (NSArray *) pluginRequestArray {
  [pluginRequestArray retain];
  [__pluginRequestArray release];
  __pluginRequestArray = pluginRequestArray;
  __pluginRequestArray_isset = YES;
}

- (BOOL) pluginRequestArrayIsSet {
  return __pluginRequestArray_isset;
}

- (void) unsetPluginRequestArray {
  [__pluginRequestArray release];
  __pluginRequestArray = nil;
  __pluginRequestArray_isset = NO;
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
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            ThriftRequestDetails *_elem2 = [[ThriftRequestDetails alloc] init];
            [_elem2 read: inProtocol];
            [fieldValue addObject: _elem2];
            [_elem2 release];
          }
          [inProtocol readListEnd];
          [self setPluginRequestArray: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftAggregatePluginRequest"];
  if (__pluginRequestArray_isset) {
    if (__pluginRequestArray != nil) {
      [outProtocol writeFieldBeginWithName: @"pluginRequestArray" type: TType_LIST fieldID: 1];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__pluginRequestArray count]];
        int i4;
        for (i4 = 0; i4 < [__pluginRequestArray count]; i4++)
        {
          [[__pluginRequestArray objectAtIndex: i4] write: outProtocol];
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
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftAggregatePluginRequest("];
  [ms appendString: @"pluginRequestArray:"];
  [ms appendFormat: @"%@", __pluginRequestArray];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

