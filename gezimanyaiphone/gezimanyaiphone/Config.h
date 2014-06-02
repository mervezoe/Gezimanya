//
//  Config.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 25/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#ifndef Motty_Config_h
#define Motty_Config_h

#define PARSE_KEY @"XfqQ5QAuI0yMNLQODt4ux18oWMFSCQHcAiCjYYx6"
#define PARSE_SECRET @"1GRveR8ZozCWKiJyi7y4fEF3swrMBRhhByDCFooW"

#define kBG_QUEUE dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kLOCATION_URL [NSURL URLWithString:@"http://www.gezimanya.com/json/lokasyonlar"]
#define kGEZINOT_URL [NSURL URLWithString:@"http://gezimanya.com/json/geziNotlari"]
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

#define TestFlight @""

//#define kCRASHLYTICS @"40a31399a300f341ea588d24826cce214ff8ca79"

#define kPARSE_REGISTER_SUCCESS @"RegisterReturnTrue"
#define kPARSE_REGISTER_FAIL @"RegisterReturnFalse"
#define kPARSE_LOGIN_FAIL @"LoginFail"
#define kPARSE_LOGOUT @"Logout"

#define kLOCATION_UPDATE @"LocationUpdate"
#define kUPDATE_PINS @"UPDATE_PINS"

#define kANIMATION_DURATION 0.4

//#define kPUSH_NOTIFICATION_TYPE_CHAT @"chatMessage"
//#define kPUSH_NOTIFICATION_CHAT_RECEIVED @"chatMessageReceived"

#define IOS_VERSION [[UIDevice currentDevice].systemVersion intValue]

#define VC_BACKGROUND_COLOR [UIColor colorWithRed:220.0/255.0 green:220.0/255.0 blue:220.0/255.0 alpha:1.0]

#endif
