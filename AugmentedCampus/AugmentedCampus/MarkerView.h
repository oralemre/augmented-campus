//
//  MarkerView.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ARGeoCoordinate;
@protocol MarkerViewDelegate;

@interface MarkerView : UIView

@property (nonatomic, strong) ARGeoCoordinate *coordinate;
@property (nonatomic, weak) id <MarkerViewDelegate> delegate;
- (id)initWithCoordinate:(ARGeoCoordinate *)coordinate delegate:(id<MarkerViewDelegate>)delegate;

@end

@protocol MarkerViewDelegate <NSObject>

- (void)didTouchMarkerView:(MarkerView *)markerView;

@end
