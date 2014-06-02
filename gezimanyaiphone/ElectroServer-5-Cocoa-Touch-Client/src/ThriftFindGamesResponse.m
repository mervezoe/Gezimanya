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
#import "ThriftServerGame.h"

#import "ThriftFindGamesResponse.h"


@implementation ThriftFindGamesResponseConstants
+ (void) initialize {
}
@end

@implementation ThriftFindGamesResponse

- (id) initWithGames: (NSArray *) games
{
  self = [super init];
  __games = [games retain];
  __games_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"games"])
  {
    __games = [[decoder decodeObjectForKey: @"games"] retain];
    __games_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__games_isset)
  {
    [encoder encodeObject: __games forKey: @"games"];
  }
}

- (void) dealloc
{
  [__games release];
  [super dealloc];
}

- (NSArray *) games {
  return [[__games retain] autorelease];
}

- (void) setGames: (NSArray *) games {
  [games retain];
  [__games release];
  __games = games;
  __games_isset = YES;
}

- (BOOL) gamesIsSet {
  return __games_isset;
}

- (void) unsetGames {
  [__games release];
  __games = nil;
  __games_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            ThriftServerGame *_elem2 = [[ThriftServerGame alloc] init];
            [_elem2 read: inProtocol];
            [fieldValue addObject: _elem2];
            [_elem2 release];
          }
          [inProtocol readListEnd];
          [self setGames: fieldValue];
          [fieldValue release];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"ThriftFindGamesResponse"];
  if (__games_isset) {
    if (__games != nil) {
      [outProtocol writeFieldBeginWithName: @"games" type: TType_LIST fieldID: 1];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__games count]];
        int i4;
        for (i4 = 0; i4 < [__games count]; i4++)
        {
          [[__games objectAtIndex: i4] write: outProtocol];
        }
        [outProtocol writeListEnd];
      }
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftFindGamesResponse("];
  [ms appendString: @"games:"];
  [ms appendFormat: @"%@", __games];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

