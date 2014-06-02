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


@interface ThriftRemoveBuddiesResponse : NSObject <NSCoding> {
  NSArray * __buddiesRemoved;
  NSArray * __buddiesNotRemoved;

  BOOL __buddiesRemoved_isset;
  BOOL __buddiesNotRemoved_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=buddiesRemoved, setter=setBuddiesRemoved:) NSArray * buddiesRemoved;
@property (nonatomic, retain, getter=buddiesNotRemoved, setter=setBuddiesNotRemoved:) NSArray * buddiesNotRemoved;
#endif

- (id) initWithBuddiesRemoved: (NSArray *) buddiesRemoved buddiesNotRemoved: (NSArray *) buddiesNotRemoved;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSArray *) buddiesRemoved;
- (void) setBuddiesRemoved: (NSArray *) buddiesRemoved;
- (BOOL) buddiesRemovedIsSet;

- (NSArray *) buddiesNotRemoved;
- (void) setBuddiesNotRemoved: (NSArray *) buddiesNotRemoved;
- (BOOL) buddiesNotRemovedIsSet;

@end

@interface ThriftRemoveBuddiesResponseConstants : NSObject {
}
@end
