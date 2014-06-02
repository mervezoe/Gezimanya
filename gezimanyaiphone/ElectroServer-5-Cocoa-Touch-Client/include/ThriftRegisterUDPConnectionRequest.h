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


@interface ThriftRegisterUDPConnectionRequest : NSObject <NSCoding> {
  int32_t __port;

  BOOL __port_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=port, setter=setPort:) int32_t port;
#endif

- (id) initWithPort: (int32_t) port;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (int32_t) port;
- (void) setPort: (int32_t) port;
- (BOOL) portIsSet;

@end

@interface ThriftRegisterUDPConnectionRequestConstants : NSObject {
}
@end
