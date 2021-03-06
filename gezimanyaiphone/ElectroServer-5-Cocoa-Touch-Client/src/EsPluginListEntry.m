//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import <EsPluginListEntry.h>
#import <EsThriftUtil.h>

@implementation EsPluginListEntry

@synthesize extensionName = extensionName_;
@synthesize pluginName = pluginName_;
@synthesize pluginHandle = pluginHandle_;
@synthesize pluginId = pluginId_;
@synthesize parameters = parameters_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		if (thriftObject != nil) {
			[self fromThrift: thriftObject];
		}
	}
	return self;
}

- (id) init {
	return [self initWithThriftObject: nil];
}

- (void) fromThrift: (id) thriftObject {
	ThriftPluginListEntry* t = (ThriftPluginListEntry*) thriftObject;
	if ([t extensionNameIsSet] && t.extensionName != nil) {
		self.extensionName = t.extensionName;
	}
	if ([t pluginNameIsSet] && t.pluginName != nil) {
		self.pluginName = t.pluginName;
	}
	if ([t pluginHandleIsSet] && t.pluginHandle != nil) {
		self.pluginHandle = t.pluginHandle;
	}
	if ([t pluginIdIsSet]) {
		self.pluginId = t.pluginId;
	}
	if ([t parametersIsSet] && t.parameters != nil) {
		self.parameters = [EsThriftUtil unflattenEsObject:[[[EsFlattenedEsObject alloc] initWithThriftObject:t.parameters] autorelease]];
	}
}

- (ThriftPluginListEntry*) toThrift {
	ThriftPluginListEntry* _t = [[[ThriftPluginListEntry alloc] init] autorelease];;
	if (extensionName_set_ && extensionName_ != nil) {
		NSString* _extensionName;
		_extensionName = self.extensionName;
		_t.extensionName = _extensionName;
	}
	if (pluginName_set_ && pluginName_ != nil) {
		NSString* _pluginName;
		_pluginName = self.pluginName;
		_t.pluginName = _pluginName;
	}
	if (pluginHandle_set_ && pluginHandle_ != nil) {
		NSString* _pluginHandle;
		_pluginHandle = self.pluginHandle;
		_t.pluginHandle = _pluginHandle;
	}
	if (pluginId_set_) {
		int32_t _pluginId;
		_pluginId = self.pluginId;
		_t.pluginId = _pluginId;
	}
	if (parameters_set_ && parameters_ != nil) {
		ThriftFlattenedEsObject* _parameters;
		_parameters = [[EsThriftUtil flattenEsObject:self.parameters] toThrift];
		_t.parameters = _parameters;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftPluginListEntry alloc] init];
}

- (void) setExtensionName: (NSString*) extensionName {
	[extensionName_ release];
	extensionName_ = [extensionName retain];
	extensionName_set_ = true;
}

- (void) setPluginName: (NSString*) pluginName {
	[pluginName_ release];
	pluginName_ = [pluginName retain];
	pluginName_set_ = true;
}

- (void) setPluginHandle: (NSString*) pluginHandle {
	[pluginHandle_ release];
	pluginHandle_ = [pluginHandle retain];
	pluginHandle_set_ = true;
}

- (void) setPluginId: (int32_t) pluginId {
	pluginId_ = pluginId;
	pluginId_set_ = true;
}

- (void) setParameters: (EsObject*) parameters {
	[parameters_ release];
	parameters_ = [parameters retain];
	parameters_set_ = true;
}

- (void) dealloc {
	self.extensionName = nil;
	self.pluginName = nil;
	self.pluginHandle = nil;
	self.parameters = nil;
	[super dealloc];
}

@end
