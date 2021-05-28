//
//  ARGeoCoordinate.h
//  AR Kit
//


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "ARCoordinate.h"
#import <UIKit/UIKit.h>


@interface ARGeoCoordinate : ARCoordinate

@property (nonatomic, retain) CLLocation *geoLocation;
@property (nonatomic, retain) UIView *displayView;
@property (nonatomic) double distanceFromOrigin;

- (float)angleFromCoordinate:(CLLocationCoordinate2D)first toCoordinate:(CLLocationCoordinate2D)second;

+ (ARGeoCoordinate *)coordinateWithLocation:(CLLocation *)location locationTitle:(NSString*) titleOfLocation;
+ (ARGeoCoordinate *)coordinateWithLocation:(CLLocation *)location fromOrigin:(CLLocation *)origin;

- (void)calibrateUsingOrigin:(CLLocation *)origin;

@end
