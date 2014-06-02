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


@interface ThriftRemoveBuddiesRequest : NSObject <NSCoding> {
  NSArray * __buddyNames;

  BOOL __buddyNames_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=buddyNames, setter=setBuddyNames:) NSArray * buddyNames;
#endif

- (id) initWithBuddyNames: (NSArray *) buddyNames;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSArray *) buddyNames;
- (void) setBuddyNames: (NSArray *) buddyNames;
- (BOOL) buddyNamesIsSet;

@end

@interface ThriftRemoveBuddiesRequestConstants : NSObject {
}
@end
