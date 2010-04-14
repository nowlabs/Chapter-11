//
//  AllWeatherRadial.h
//  Chapter 10
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Tire.h"

@interface AllWeatherRadial : Tire {
	float rainHandling;
	float snowHandling;
}

- (void)setRainHandling:(float)newRainHandling;
- (float)rainHandling;

- (void)setSnowHandling:(float)newSnowHandling;
- (float)snowHandling;


@end
