//
//  MarkerView.m
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//
#import "MarkerView.h"

#import "ARGeoCoordinate.h"

const float kWidth = 200.0f;
const float kHeight = 100.0f;

@interface MarkerView ()

@property (nonatomic, strong) UILabel *lblDistance;

@end


@implementation MarkerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoordinate:(ARGeoCoordinate *)coordinate delegate:(id<MarkerViewDelegate>)delegate {
	if((self = [super initWithFrame:CGRectMake(0.0f, 0.0f, kWidth, kHeight)])) {
		_coordinate = coordinate;
		_delegate = delegate;
		
		[self setUserInteractionEnabled:YES];
		
		UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, kWidth, 40.0f)];
		[title setBackgroundColor:[UIColor colorWithWhite:0.3f alpha:0.7f]];
		[title setTextColor:[UIColor whiteColor]];
		[title setTextAlignment:NSTextAlignmentCenter];
		[title setText:[coordinate title]];
		[title sizeToFit];
		
		[self addSubview:title];
		[self setBackgroundColor:[UIColor clearColor]];
	}

	return self;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	if(_delegate && [_delegate conformsToProtocol:@protocol(MarkerViewDelegate)]) {
		[_delegate didTouchMarkerView:self];
	}
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    CGRect theFrame = CGRectMake(0, 0, kWidth, kHeight);
    
	return CGRectContainsPoint(theFrame, point);
}

@end
