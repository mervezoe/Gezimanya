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

#import "ThriftErrorType.h"

@interface ThriftConnectionAttemptResponse : NSObject <NSCoding> {
  BOOL __successful;
  int32_t __connectionId;
  int __error;

  BOOL __successful_isset;
  BOOL __connectionId_isset;
  BOOL __error_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=successful, setter=setSuccessful:) BOOL successful;
@property (nonatomic, getter=connectionId, setter=setConnectionId:) int32_t connectionId;
@property (nonatomic, getter=error, setter=setError:) int error;
#endif

- (id) initWithSuccessful: (BOOL) successful connectionId: (int32_t) connectionId error: (int) error;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (BOOL) successful;
- (void) setSuccessful: (BOOL) successful;
- (BOOL) successfulIsSet;

- (int32_t) connectionId;
- (void) setConnectionId: (int32_t) connectionId;
- (BOOL) connectionIdIsSet;

- (int) error;
- (void) setError: (int) error;
- (BOOL) errorIsSet;

@end

@interface ThriftConnectionAttemptResponseConstants : NSObject {
}
@end
