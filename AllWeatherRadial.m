//
//  AllWeatherRadial.m
//  Chapter 10
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "AllWeatherRadial.h"


@implementation AllWeatherRadial

- (id)initWithPressure:(float)newPressure 
		 andTreadDepth:(float)newTreadDepth {
	if (self = [super initWithPressure:newPressure 
						 andTreadDepth:newTreadDepth]) {
		rainHandling = 23.7;
		snowHandling = 42.5;
	}
	return self;
}

- (void)setRainHandling:(float)newRainHandling {
	rainHandling = newRainHandling;
}

- (float)rainHandling {
	return rainHandling;
}

- (void)setSnowHandling:(float)newSnowHandling {
	snowHandling = newSnowHandling;
}

- (float)snowHandling {
	return snowHandling;
}

- (NSString *)description {
	NSMutableString *desc = 
	[NSMutableString stringWithString:[super description]];
	[desc appendFormat:
	 @", RainHandling: %.1f, SnowHandling: %.1f", 
	 rainHandling, snowHandling];
	return desc;
}

@end
