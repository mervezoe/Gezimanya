#import <Foundation/Foundation.h>

@interface EsSettingsLoader : NSObject <NSXMLParserDelegate>{
}
- (NSArray*) readServerSettings;
- (NSArray*) readServerSettingsFromFilename:(NSString*) filename;
@end

