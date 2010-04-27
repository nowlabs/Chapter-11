//
//  Car.m
//  Chapter 10
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)init {
	if (self = [super init]) {
		name = @"Car";
		tires = [[NSMutableArray alloc] init];
		int i;
		for (i = 0; i < 4; i++) {
			[tires addObject:[NSNull null]];
		}
	}
	return self;
}

@synthesize name;
@synthesize engine;

- (void)setTire:(Tire *)tire
		atIndex:(int)index {
	[tires replaceObjectAtIndex:index withObject:tire];
} //setTire:atIndex

-(Tire *)tireAtIndex:(int)index {
	Tire *tire = [tires objectAtIndex:index];
	return tire;
} //tireAtIndex:

- (void)print {
	NSLog(@"%@ has:", name);
	NSLog(@"%@", engine);
	for	(int i = 0; i < 4; i++) {
		NSLog(@"%@", [self tireAtIndex:i]);
	}
} //print

- (void)dealloc {
	[name release];
	[tires release];
	[engine release];
	[super dealloc];
}

@end

