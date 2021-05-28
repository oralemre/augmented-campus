//
//  PlaceAnnotation.m
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import "PlaceAnnotation.h"

#import "Building.h"

@interface PlaceAnnotation ()

@property (nonatomic, strong) Building *place;

@end


@implementation PlaceAnnotation

- (id)initWithPlace:(Building *)place {
	if((self = [super init])) {
		_place = place;
	}
	return self;
}

- (CLLocationCoordinate2D)coordinate {
	return [_place location].coordinate;
}

- (NSString *)title {
	return [_place placeName];
}

@end
