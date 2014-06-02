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

@interface ThriftRoomVariable : NSObject <NSCoding> {
  BOOL __persistent;
  NSString * __name;
  ThriftFlattenedEsObject * __value;
  BOOL __locked;

  BOOL __persistent_isset;
  BOOL __name_isset;
  BOOL __value_isset;
  BOOL __locked_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=persistent, setter=setPersistent:) BOOL persistent;
@property (nonatomic, retain, getter=name, setter=setName:) NSString * name;
@property (nonatomic, retain, getter=value, setter=setValue:) ThriftFlattenedEsObject * value;
@property (nonatomic, getter=locked, setter=setLocked:) BOOL locked;
#endif

- (id) initWithPersistent: (BOOL) persistent name: (NSString *) name value: (ThriftFlattenedEsObject *) value locked: (BOOL) locked;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (BOOL) persistent;
- (void) setPersistent: (BOOL) persistent;
- (BOOL) persistentIsSet;

- (NSString *) name;
- (void) setName: (NSString *) name;
- (BOOL) nameIsSet;

- (ThriftFlattenedEsObject *) value;
- (void) setValue: (ThriftFlattenedEsObject *) value;
- (BOOL) valueIsSet;

- (BOOL) locked;
- (void) setLocked: (BOOL) locked;
- (BOOL) lockedIsSet;

@end

@interface ThriftRoomVariableConstants : NSObject {
}
@end
