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
#import <ThriftValidateAdditionalLoginResponse.h>

/**
 * This request and the ValidateAdditionalLoginResponse messages are ones that you will not have to worry about as a developer. However, here is what ValidateAdditionalLoginRequest and ValidateAdditionalLoginResponse is for. 
 After a client is connected and logged into the server it is possible for the client to then establish one or more additional connections for various reasons (for example, UDP connection for 
 rapid message transfer, RTMP for video streaming, etc). When the client makes a connection to the server and attempts to login, the client indicates that they are trying to login for an additional 
 time by sending their current username, and a secret. This secret can be anything, and is client generated. The server receives the login request containing the username and secrets, sees that 
 the user is already logged in elsewhere, and sends a message to that user on the primary connection. That message is ValidationAdditionalLoginRequest. The ESEngine class intercepts this 
 request, compares the secrete on it to the secret it knows about, and then responds using the ValidationAdditionalLoginResponse. If the secret matches then the client flags the 'approved' 
 property as 'true' on the response. In which case the login succeeds.
 */
@interface EsValidateAdditionalLoginResponse : EsResponse {
@private
	BOOL approved_set_;
	BOOL approved_;
	BOOL secret_set_;
	NSString* secret_;
}

/**
 * If the secrets match then set this to true before sending to the server.
 */
@property(nonatomic) BOOL approved;
/**
 * The secret.
 */
@property(retain,nonatomic) NSString* secret;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftValidateAdditionalLoginResponse*) toThrift;
- (id) newThrift;
@end
