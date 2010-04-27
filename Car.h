//
//  Car.h
//  Chapter 10
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Tire;
@class Engine;

@interface Car : NSObject
{
	NSString *name;
	Engine *engine;
	NSMutableArray *tires;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;

- (Tire *)tireAtIndex:(int)index;
- (void)setTire:(Tire *)tire
		atIndex:(int)index;
- (void)print;

@end //Car Interface

