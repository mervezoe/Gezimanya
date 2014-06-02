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
#import "ThriftUserVariable.h"

@interface ThriftUserListEntry : NSObject <NSCoding> {
  NSString * __userName;
  NSArray * __userVariables;
  BOOL __sendingVideo;
  NSString * __videoStreamName;
  BOOL __roomOperator;

  BOOL __userName_isset;
  BOOL __userVariables_isset;
  BOOL __sendingVideo_isset;
  BOOL __videoStreamName_isset;
  BOOL __roomOperator_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=userName, setter=setUserName:) NSString * userName;
@property (nonatomic, retain, getter=userVariables, setter=setUserVariables:) NSArray * userVariables;
@property (nonatomic, getter=sendingVideo, setter=setSendingVideo:) BOOL sendingVideo;
@property (nonatomic, retain, getter=videoStreamName, setter=setVideoStreamName:) NSString * videoStreamName;
@property (nonatomic, getter=roomOperator, setter=setRoomOperator:) BOOL roomOperator;
#endif

- (id) initWithUserName: (NSString *) userName userVariables: (NSArray *) userVariables sendingVideo: (BOOL) sendingVideo videoStreamName: (NSString *) videoStreamName roomOperator: (BOOL) roomOperator;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSString *) userName;
- (void) setUserName: (NSString *) userName;
- (BOOL) userNameIsSet;

- (NSArray *) userVariables;
- (void) setUserVariables: (NSArray *) userVariables;
- (BOOL) userVariablesIsSet;

- (BOOL) sendingVideo;
- (void) setSendingVideo: (BOOL) sendingVideo;
- (BOOL) sendingVideoIsSet;

- (NSString *) videoStreamName;
- (void) setVideoStreamName: (NSString *) videoStreamName;
- (BOOL) videoStreamNameIsSet;

- (BOOL) roomOperator;
- (void) setRoomOperator: (BOOL) roomOperator;
- (BOOL) roomOperatorIsSet;

@end

@interface ThriftUserListEntryConstants : NSObject {
}
@end