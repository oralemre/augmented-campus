//
//  ARViewProtocol.h
//  AR Kit
//
//


@class ARGeoCoordinate;

@protocol ARMarkerDelegate <NSObject>
-(void) didTapMarker:(ARGeoCoordinate *) coordinate;
@end

@protocol ARDelegate <NSObject>

-(void) didUpdateHeading:(CLHeading *)newHeading;
-(void) didUpdateLocation:(CLLocation *)newLocation;
-(void) didUpdateOrientation:(UIDeviceOrientation) orientation;

@end
