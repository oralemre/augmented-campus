//
//  PlaceAnnotation.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>

@class Building;

@interface PlaceAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;

- (id)initWithPlace:(Building *)place;

@end
