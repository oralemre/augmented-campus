//
//  ARKit.h
//  AR Kit
//
//


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "ARGeoCoordinate.h"
#import "ARLocationDelegate.h"
#import "ARViewProtocol.h"
#import "GEOLocations.h"
#import "AugmentedRealityController.h"


@interface ARKit : NSObject

+(BOOL)deviceSupportsAR;

@end
