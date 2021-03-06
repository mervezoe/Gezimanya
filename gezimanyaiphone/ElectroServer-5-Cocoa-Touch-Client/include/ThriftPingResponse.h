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


@interface ThriftPingResponse : NSObject <NSCoding> {
  BOOL __globalResponseRequested;
  int32_t __pingRequestId;

  BOOL __globalResponseRequested_isset;
  BOOL __pingRequestId_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=globalResponseRequested, setter=setGlobalResponseRequested:) BOOL globalResponseRequested;
@property (nonatomic, getter=pingRequestId, setter=setPingRequestId:) int32_t pingRequestId;
#endif

- (id) initWithGlobalResponseRequested: (BOOL) globalResponseRequested pingRequestId: (int32_t) pingRequestId;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (BOOL) globalResponseRequested;
- (void) setGlobalResponseRequested: (BOOL) globalResponseRequested;
- (BOOL) globalResponseRequestedIsSet;

- (int32_t) pingRequestId;
- (void) setPingRequestId: (int32_t) pingRequestId;
- (BOOL) pingRequestIdIsSet;

@end

@interface ThriftPingResponseConstants : NSObject {
}
@end
