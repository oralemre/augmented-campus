//
//  ARLocationDelegate.h
//  AR Kit
//
//


#import "ARGeoCoordinate.h"

@protocol ARLocationDelegate

//returns an array of ARGeoCoordinates
-(NSMutableArray *)geoLocations;
-(void) locationClicked:(ARGeoCoordinate *) coordinate;

@end

