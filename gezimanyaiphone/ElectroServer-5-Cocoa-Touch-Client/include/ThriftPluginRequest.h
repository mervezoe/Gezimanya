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

@interface ThriftPluginRequest : NSObject <NSCoding> {
  NSString * __pluginName;
  int32_t __zoneId;
  int32_t __roomId;
  int32_t __sessionKey;
  ThriftFlattenedEsObject * __parameters;

  BOOL __pluginName_isset;
  BOOL __zoneId_isset;
  BOOL __roomId_isset;
  BOOL __sessionKey_isset;
  BOOL __parameters_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=pluginName, setter=setPluginName:) NSString * pluginName;
@property (nonatomic, getter=zoneId, setter=setZoneId:) int32_t zoneId;
@property (nonatomic, getter=roomId, setter=setRoomId:) int32_t roomId;
@property (nonatomic, getter=sessionKey, setter=setSessionKey:) int32_t sessionKey;
@property (nonatomic, retain, getter=parameters, setter=setParameters:) ThriftFlattenedEsObject * parameters;
#endif

- (id) initWithPluginName: (NSString *) pluginName zoneId: (int32_t) zoneId roomId: (int32_t) roomId sessionKey: (int32_t) sessionKey parameters: (ThriftFlattenedEsObject *) parameters;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSString *) pluginName;
- (void) setPluginName: (NSString *) pluginName;
- (BOOL) pluginNameIsSet;

- (int32_t) zoneId;
- (void) setZoneId: (int32_t) zoneId;
- (BOOL) zoneIdIsSet;

- (int32_t) roomId;
- (void) setRoomId: (int32_t) roomId;
- (BOOL) roomIdIsSet;

- (int32_t) sessionKey;
- (void) setSessionKey: (int32_t) sessionKey;
- (BOOL) sessionKeyIsSet;

- (ThriftFlattenedEsObject *) parameters;
- (void) setParameters: (ThriftFlattenedEsObject *) parameters;
- (BOOL) parametersIsSet;

@end

@interface ThriftPluginRequestConstants : NSObject {
}
@end