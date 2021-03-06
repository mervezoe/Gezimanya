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


@interface ThriftEncryptionStateChangeEvent : NSObject <NSCoding> {
  BOOL __encryptionOn;

  BOOL __encryptionOn_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=encryptionOn, setter=setEncryptionOn:) BOOL encryptionOn;
#endif

- (id) initWithEncryptionOn: (BOOL) encryptionOn;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (BOOL) encryptionOn;
- (void) setEncryptionOn: (BOOL) encryptionOn;
- (BOOL) encryptionOnIsSet;

@end

@interface ThriftEncryptionStateChangeEventConstants : NSObject {
}
@end
