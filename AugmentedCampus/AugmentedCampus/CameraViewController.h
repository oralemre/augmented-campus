//
//  CameraViewController.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

#import "ARKit.h"

@class CameraViewController;

@protocol CameraViewControllerDelegate
- (void)cameraViewControllerDidFinish:(CameraViewController *)controller;
@end

@interface CameraViewController : UIViewController <ARLocationDelegate, ARDelegate, ARMarkerDelegate>

@property (weak, nonatomic) id <CameraViewControllerDelegate> delegate;
@property (nonatomic, strong) NSArray *locations;
@property (nonatomic, strong) MKUserLocation *userLocation;

- (IBAction)done:(id)sender;

@end
