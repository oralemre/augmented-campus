//
//  Place.m
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import "Building.h"

@implementation Building

- (id)initWithLocation:(CLLocation *)location name:(NSString *)name images:(NSArray *) images info:(NSString *) info {
	if((self = [super init])) {
		_location = location;
		_placeName = [name copy];
        _images = [images copy];
        _info = [info copy];
	}
	
	return self;
}
@end
