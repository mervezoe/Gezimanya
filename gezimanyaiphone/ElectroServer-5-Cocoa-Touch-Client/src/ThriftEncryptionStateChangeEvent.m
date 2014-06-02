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


#import "ThriftEncryptionStateChangeEvent.h"


@implementation ThriftEncryptionStateChangeEventConstants
+ (void) initialize {
}
@end

@implementation ThriftEncryptionStateChangeEvent

- (id) initWithEncryptionOn: (BOOL) encryptionOn
{
  self = [super init];
  __encryptionOn = encryptionOn;
  __encryptionOn_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"encryptionOn"])
  {
    __encryptionOn = [decoder decodeBoolForKey: @"encryptionOn"];
    __encryptionOn_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__encryptionOn_isset)
  {
    [encoder encodeBool: __encryptionOn forKey: @"encryptionOn"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (BOOL) encryptionOn {
  return __encryptionOn;
}

- (void) setEncryptionOn: (BOOL) encryptionOn {
  __encryptionOn = encryptionOn;
  __encryptionOn_isset = YES;
}

- (BOOL) encryptionOnIsSet {
  return __encryptionOn_isset;
}

- (void) unsetEncryptionOn {
  __encryptionOn_isset = NO;
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
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setEncryptionOn: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftEncryptionStateChangeEvent"];
  if (__encryptionOn_isset) {
    [outProtocol writeFieldBeginWithName: @"encryptionOn" type: TType_BOOL fieldID: 1];
    [outProtocol writeBool: __encryptionOn];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftEncryptionStateChangeEvent("];
  [ms appendString: @"encryptionOn:"];
  [ms appendFormat: @"%i", __encryptionOn];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end
