//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsMessage.h>
#import <EsMessageType.h>
#import <EsRequest.h>
#import <EsResponse.h>
#import <EsEvent.h>
#import <EsEntity.h>
#import <EsObject.h>
#import <ThriftPluginListEntry.h>
#import <EsFlattenedEsObject.h>
#import <ThriftFlattenedEsObject.h>

@interface EsPluginListEntry : EsEntity {
@private
	BOOL extensionName_set_;
	NSString* extensionName_;
	BOOL pluginName_set_;
	NSString* pluginName_;
	BOOL pluginHandle_set_;
	NSString* pluginHandle_;
	BOOL pluginId_set_;
	int32_t pluginId_;
	BOOL parameters_set_;
	EsObject* parameters_;
}

@property(retain,nonatomic) NSString* extensionName;
@property(retain,nonatomic) NSString* pluginName;
@property(retain,nonatomic) NSString* pluginHandle;
@property(nonatomic) int32_t pluginId;
@property(retain,nonatomic) EsObject* parameters;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftPluginListEntry*) toThrift;
- (id) newThrift;
@end
