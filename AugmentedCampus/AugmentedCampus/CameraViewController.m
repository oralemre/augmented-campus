//
//  CameraViewController.m
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import "CameraViewController.h"

#import "Building.h"
#import "MarkerView.h"

const int kInfoViewTag = 1001;
const int kInfoViewTag1 = 1002;

@interface CameraViewController () <MarkerViewDelegate>

@property (nonatomic, strong) AugmentedRealityController *arController;
@property (nonatomic, strong) NSMutableArray *geoLocations;
@property (nonatomic, strong) Building *currentPlace;
@property (atomic) BOOL *control;

@end


@implementation CameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	if(!_arController) {
		_arController = [[AugmentedRealityController alloc] initWithView:[self view] parentViewController:self withDelgate:self];
	}
	
	[_arController setMinimumScaleFactor:0.5];
	[_arController setScaleViewsBasedOnDistance:YES];
	[_arController setRotateViewsBasedOnPerspective:YES];
	[_arController setDebugMode:NO];
}

- (void)viewWillAppear:(BOOL)animated {
	[self generateGeoLocations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (IBAction)done:(id)sender {
    [[self delegate] cameraViewControllerDidFinish:self];
}

- (void)generateGeoLocations {
	[self setGeoLocations:[NSMutableArray arrayWithCapacity:[_locations count]]];
	
	for(Building *place in _locations) {
		ARGeoCoordinate *coordinate = [ARGeoCoordinate coordinateWithLocation:[place location] locationTitle:[place placeName]];
		[coordinate calibrateUsingOrigin:[_userLocation location]];
		MarkerView *markerView = [[MarkerView alloc] initWithCoordinate:coordinate delegate:self];
		NSLog(@"Marker view %@", markerView);
		
		[coordinate setDisplayView:markerView];
		[_arController addCoordinate:coordinate];
		[_geoLocations addObject:coordinate];
	}
}

#pragma mark - ARLocationDelegate

-(NSMutableArray *)geoLocations {
	if(!_geoLocations) {
		[self generateGeoLocations];
	}
	return _geoLocations;
}

- (void)locationClicked:(ARGeoCoordinate *)coordinate {
	NSLog(@"Tapped location %@", coordinate);
}

#pragma mark - ARDelegate

-(void)didUpdateHeading:(CLHeading *)newHeading {
	
}

-(void)didUpdateLocation:(CLLocation *)newLocation {
	
}

-(void)didUpdateOrientation:(UIDeviceOrientation)orientation {
	
}

#pragma mark - ARMarkerDelegate

-(void)didTapMarker:(ARGeoCoordinate *)coordinate {
}

- (void)didTouchMarkerView:(MarkerView *)markerView {
	ARGeoCoordinate *tappedCoordinate = [markerView coordinate];
	CLLocation *location = [tappedCoordinate geoLocation];
	
    _control = TRUE;
    
    int index = [_locations indexOfObjectPassingTest:^(Building *obj, NSUInteger index, BOOL *stop) {
        return [[obj location] isEqual:location];
    }];
	
	if(index != NSNotFound) {
        Building *tappedPlace = [_locations objectAtIndex:index];
        [self showInfoViewForPlace:tappedPlace];
    }
}

- (void)showInfoViewForPlace:(Building *)place {
    _currentPlace = place;
    
    CGRect allFrame = [[self view] frame];
    CGRect viewRect = CGRectMake(0, 0, allFrame.size.width, 3*allFrame.size.height/5);
    UIView* myView = [[UIView alloc] initWithFrame:viewRect];
    [myView setCenter:[[self view] center]];
    [myView setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.5f]];
    [myView setTag:kInfoViewTag];
    [[self view] addSubview:myView];
    
    CGRect frame = [myView frame];
    
    UISwipeGestureRecognizer * swipeleft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft:)];
    [swipeleft setNumberOfTouchesRequired:1];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer * swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiperight:)];
    [swiperight setNumberOfTouchesRequired:1];
    swiperight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
    
    UIImageView *imView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width/3, frame.size.height/2)];
    [imView setCenter : CGPointMake(frame.size.width/6,frame.size.height/4)];
    [imView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
    [imView setImage:[[_currentPlace images] objectAtIndex:0]];
    [imView setBackgroundColor:[[UIColor whiteColor] colorWithAlphaComponent:0.5f]];
    [imView setMultipleTouchEnabled:true];
    [imView setUserInteractionEnabled:true];
    [imView addGestureRecognizer:swipeleft];
    [imView addGestureRecognizer:swiperight];
    [imView setTag:kInfoViewTag1];
    [myView addSubview:imView];
    
    
	UITextView *infoView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 2*frame.size.width/3 , frame.size.height)];
    [infoView setCenter : CGPointMake(4*frame.size.width/6,frame.size.height/2)];
	[infoView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
    [infoView setText: [_currentPlace info]];
    [infoView setTextColor: [UIColor whiteColor]];
    [infoView setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.5f]];
	[infoView setEditable:NO];
    [myView addSubview:infoView];
    
    

}

-(void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer{
    UIImageView *imView = [[self view] viewWithTag:kInfoViewTag1];
    int index = [[_currentPlace images] indexOfObject: imView.image];
    if(index != 0){
        index = index - 1;
        [imView setImage:[[_currentPlace images] objectAtIndex:index]];

    }
}
                                           

-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer{
    UIImageView *imView = [[self view] viewWithTag:kInfoViewTag1];
    int index = [[_currentPlace images] indexOfObject: imView.image];
    if(index != [[_currentPlace images] count] - 1){
        index = index + 1;
        [imView setImage:[[_currentPlace images] objectAtIndex:index]];
    }
}
                                           
                                           
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if(_control == FALSE){
        UIView *last = [[self view] viewWithTag:kInfoViewTag];
        
        [last removeFromSuperview];
    }
    _control = FALSE;
}

@end
