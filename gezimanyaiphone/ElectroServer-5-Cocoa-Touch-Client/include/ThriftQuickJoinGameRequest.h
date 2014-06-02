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
#import "ThriftSearchCriteria.h"

@interface ThriftQuickJoinGameRequest : NSObject <NSCoding> {
  NSString * __gameType;
  NSString * __zoneName;
  NSString * __password;
  BOOL __locked;
  BOOL __hidden;
  BOOL __createOnly;
  ThriftFlattenedEsObject * __gameDetails;
  ThriftSearchCriteria * __criteria;

  BOOL __gameType_isset;
  BOOL __zoneName_isset;
  BOOL __password_isset;
  BOOL __locked_isset;
  BOOL __hidden_isset;
  BOOL __createOnly_isset;
  BOOL __gameDetails_isset;
  BOOL __criteria_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=gameType, setter=setGameType:) NSString * gameType;
@property (nonatomic, retain, getter=zoneName, setter=setZoneName:) NSString * zoneName;
@property (nonatomic, retain, getter=password, setter=setPassword:) NSString * password;
@property (nonatomic, getter=locked, setter=setLocked:) BOOL locked;
@property (nonatomic, getter=hidden, setter=setHidden:) BOOL hidden;
@property (nonatomic, getter=createOnly, setter=setCreateOnly:) BOOL createOnly;
@property (nonatomic, retain, getter=gameDetails, setter=setGameDetails:) ThriftFlattenedEsObject * gameDetails;
@property (nonatomic, retain, getter=criteria, setter=setCriteria:) ThriftSearchCriteria * criteria;
#endif

- (id) initWithGameType: (NSString *) gameType zoneName: (NSString *) zoneName password: (NSString *) password locked: (BOOL) locked hidden: (BOOL) hidden createOnly: (BOOL) createOnly gameDetails: (ThriftFlattenedEsObject *) gameDetails criteria: (ThriftSearchCriteria *) criteria;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSString *) gameType;
- (void) setGameType: (NSString *) gameType;
- (BOOL) gameTypeIsSet;

- (NSString *) zoneName;
- (void) setZoneName: (NSString *) zoneName;
- (BOOL) zoneNameIsSet;

- (NSString *) password;
- (void) setPassword: (NSString *) password;
- (BOOL) passwordIsSet;

- (BOOL) locked;
- (void) setLocked: (BOOL) locked;
- (BOOL) lockedIsSet;

- (BOOL) hidden;
- (void) setHidden: (BOOL) hidden;
- (BOOL) hiddenIsSet;

- (BOOL) createOnly;
- (void) setCreateOnly: (BOOL) createOnly;
- (BOOL) createOnlyIsSet;

- (ThriftFlattenedEsObject *) gameDetails;
- (void) setGameDetails: (ThriftFlattenedEsObject *) gameDetails;
- (BOOL) gameDetailsIsSet;

- (ThriftSearchCriteria *) criteria;
- (void) setCriteria: (ThriftSearchCriteria *) criteria;
- (BOOL) criteriaIsSet;

@end

@interface ThriftQuickJoinGameRequestConstants : NSObject {
}
@end
