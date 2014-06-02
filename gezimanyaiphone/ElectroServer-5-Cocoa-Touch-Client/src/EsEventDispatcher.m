//
//  EsEventDispatcher.m
//  cocoa-touch
//
//  Created by Jason von Nieda on 7/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "EsEventDispatcher.h"
#import <DLOG.h>


@implementation EsEventDispatcher

- (id) init {
	DLOG(@"init");
	if (self = [super init]) {
		listeners_ = [[NSMutableDictionary alloc] init];
	}
	return self;
}

NSInteger compareListeners(EsEventDispatcherListener* o1, EsEventDispatcherListener* o2, void* context) {
	BOOL asc = false;
	if (o1.priority < o2.priority) {
		return asc ? NSOrderedAscending : NSOrderedDescending;
	}
	if (o1.priority> o2.priority) {
		return asc ? NSOrderedDescending : NSOrderedAscending;
	}
	else {
		return NSOrderedSame;
	}
}

- (void) addEventListenerWithTarget:(id) target action:(SEL) action eventIdentifier:(int) eventIdentifier priority:(int) priority {
	NSMutableArray* listeners = [listeners_ objectForKey:[NSNumber numberWithInt:eventIdentifier]];
	if (listeners == nil) {
		listeners = [[NSMutableArray alloc] init];
		[listeners autorelease];
		[listeners_ setObject:listeners forKey:[NSNumber numberWithInt:eventIdentifier]];
	}
	EsEventDispatcherListener* listener = [[EsEventDispatcherListener alloc] init];
	[listener autorelease];
	listener.target = target;
	listener.action = action;
	listener.priority = priority;
	[listeners addObject:listener];
	[listeners sortUsingFunction:compareListeners context:nil];
}

- (void) addEventListenerWithTarget:(id) target action:(SEL) action eventIdentifier:(int) eventIdentifier {
	[self addEventListenerWithTarget:target action:action eventIdentifier:eventIdentifier priority:0];
}

- (void) removeEventListenerWithTarget:(id) target action:(SEL) action eventIdentifier:(int) eventIdentifier {
	NSMutableArray* listeners = [listeners_ objectForKey:[NSNumber numberWithInt:eventIdentifier]];
	if (listeners == nil) {
		return;
	}
	NSMutableArray* t = [listeners copy];
	for (EsEventDispatcherListener* listener in t) {
		if (listener.target == target && listener.action == action) {
			[listeners removeObject:listener];
		}
	}
    [t release];
}

- (void) dispatchEvent:(EsEventDispatcherEvent*) event {
	NSMutableArray* listeners = [listeners_ objectForKey:[NSNumber numberWithInt:event.eventType]];
	if (listeners != nil) {
		for (EsEventDispatcherListener* listener in listeners) {
			[listener.target performSelector:listener.action withObject:event];
		}
	}
}

- (void) dealloc {
	DLOG(@"dealloc");
	[listeners_ release];
	[super dealloc];
}

@end

@implementation EsEventDispatcherListener

@synthesize target;
@synthesize action;
@synthesize priority;

@end
