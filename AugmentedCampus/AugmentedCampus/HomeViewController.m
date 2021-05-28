//
//  HomeViewController.m
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import "HomeViewController.h"
#import "UnityViewController.h"

#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

#import "Building.h"
#import "PlaceAnnotation.h"

@interface HomeViewController () <CLLocationManagerDelegate, MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) NSArray *locations;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _locationManager = [[CLLocationManager alloc] init];
    [_locationManager setDelegate:self];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [_locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)virtualTourPressed:(id)sender{
    NSString *customURL = @"iOSDevApp1://";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
}

#pragma mark - CLLocationManager Delegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    
    NSMutableArray *temp = [NSMutableArray array];
    
    
    NSArray *imageArray = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"library1.jpg"],
                           [UIImage imageNamed:@"library2.jpg"],
                           [UIImage imageNamed:@"library3.jpg"],
                           nil];
    NSString *text = @"It is located at North Campus, you can borrow books from library; but especially you can not take course books to bring them your home. Also there is Audio Room on Library, you can watch films in that room. Periodicals is another place in library that you can study.";
    CLLocation *location = [[CLLocation alloc] initWithLatitude: 41.085425 longitude: 29.043973];
    Building *library = [[Building alloc] initWithLocation:location name:@"Kütüphane"  images: imageArray info: text];
    [temp addObject:library];
    
    PlaceAnnotation *annotation = [[PlaceAnnotation alloc] initWithPlace:library];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"kareblok1.jpg"],
                  [UIImage imageNamed:@"kareblok2.jpg"],
                  nil];
    text = @"There are KOSGEB, Electric&Electronic Engineering Department, Chemical Engineering Department and Physcics Department in that building also Dunkin Donuts and Espressolab are places that located Kare Blok that you can eat donuts and drink coffee.";
    location = [[CLLocation alloc] initWithLatitude: 41.085851 longitude: 29.045199];
    Building *kareBlock = [[Building alloc] initWithLocation:location name:@"Kare Blok"  images: imageArray info: text];
    [temp addObject:kareBlock];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:kareBlock];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"newhall1.jpg"],
                  [UIImage imageNamed:@"newhall2.jpg"],
                  [UIImage imageNamed:@"newhall3.jpg"],
                  nil];
    text = @"There are lots of classrooms in that building and especially community courses are studied at that building also there is a restaurant at roof floor, for lunch and dinner you can eat there.";
    location = [[CLLocation alloc] initWithLatitude: 41.086490 longitude: 29.045148];
    Building *newHall = [[Building alloc] initWithLocation:location name:@"New Hall"  images: imageArray info: text];
    [temp addObject:newHall];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:newHall];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"bm1.jpg"],
                  [UIImage imageNamed:@"bm2.jpg"],
                  nil];
    text = @"This building is the building of Computer Engineering Department. At upstairs there are teachers' room and labs and downstairs there are classrooms also at roof floor there is a room that you can hang out your friends and rest after a long day.";
    location = [[CLLocation alloc] initWithLatitude: 41.086046 longitude: 29.043929];
    Building *ETAA = [[Building alloc] initWithLocation:location name:@"BM"  images: imageArray info: text];
    [temp addObject:ETAA];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:ETAA];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"etab1.jpg"],
                  [UIImage imageNamed:@"etab2.jpg"],
                  nil];
    text = @"";
    location = [[CLLocation alloc] initWithLatitude: 41.086346 longitude: 29.044124];
    Building *ETAB = [[Building alloc] initWithLocation:location name:@"ETA"  images: imageArray info: text];
    [temp addObject:ETAB];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:ETAB];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"tp.jpg"],
                  nil];
    text = @"It is the building that companies that are funding by KOSGEB is located.";
    location = [[CLLocation alloc] initWithLatitude: 41.086292 longitude: 29.043611];
    Building *teknoPark = [[Building alloc] initWithLocation:location name:@"Tekno Park"  images: imageArray info: text];
    [temp addObject:teknoPark];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:teknoPark];
    [_mapView addAnnotation:annotation];
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"ef.jpg"],
                  nil];
    text = @"In the Faculty of Education Building there are a number of classrooms in various sizes as well as the offices of the Faculty of Education staff members.";
    location = [[CLLocation alloc] initWithLatitude: 41.086778 longitude: 29.044264];
    Building *EF = [[Building alloc] initWithLocation:location name:@"Eğitim Fakültesi"  images: imageArray info: text];
    [temp addObject:EF];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:EF];
    [_mapView addAnnotation:annotation];
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"kuzey1.jpg"],
                  nil];
    text = @"This is the one of the largest dorm in the University, and is located on the North Campus, next to the 2nd North Dorm. Interior and exterior design of the building is identical to the 2nd North Dorm.";
    location = [[CLLocation alloc] initWithLatitude: 41.086746 longitude: 29.043552];
    Building *kuzey1 = [[Building alloc] initWithLocation:location name:@"Kuzey Yurt 1"  images: imageArray info: text];
    [temp addObject:kuzey1];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:kuzey1];
    [_mapView addAnnotation:annotation];
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"kpark.jpg"],
                  nil];
    text = @"The Department of Molecular Biology and Genetics with all their laboratories are in the North Park Building.";
    location = [[CLLocation alloc] initWithLatitude: 41.087844 longitude: 29.043603];
    Building *kuzeyPark = [[Building alloc] initWithLocation:location name:@"Kuzey Park"  images: imageArray info: text];
    [temp addObject:kuzeyPark];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:kuzeyPark];
    [_mapView addAnnotation:annotation];
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"kuzey3.jpg"],
                  nil];
    text = @"The residental areas of 3rd North Dorm organized as apartments. The building contains small apartment units, each containing 2 bathrooms, 2 toilets and a kitchen. There is also 3 public study and a laundry room in the building.";
    location = [[CLLocation alloc] initWithLatitude: 41.087495 longitude: 29.043191];
    Building *kuzey3 = [[Building alloc] initWithLocation:location name:@"Kuzey Yurt 3"  images: imageArray info: text];
    [temp addObject:kuzey3];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:kuzey3];
    [_mapView addAnnotation:annotation];
    
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"yapi.jpg"],
                  nil];
    text = @"Bina ve tesislerin tesisat işleri ve bunların keşifleri, ihalesi yapılan işlerin imalat bazında denetimi, hak edişler, geçici ve kesin kabul işlemleri; Yapım ve onarım işlemlerinin keşifleri ihale işlemleri, ihalesi yapılan işlerin imalat bazında denetimi, hak edişler, geçici ve kesin kabul işlemleri; Yatırım projeleri kapsamında bulunan bina ve tesislerin etüd-projeleri, belediye ile ilgili imar-ruhsat işlemleri yapı işlerinin başlıca işleridir.";
    location = [[CLLocation alloc] initWithLatitude: 41.087988 longitude: 29.043299];
    Building *yapi = [[Building alloc] initWithLocation:location name:@"YAPI İŞLERİ"  images: imageArray info: text];
    [temp addObject:yapi];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:yapi];
    [_mapView addAnnotation:annotation];
    
    imageArray = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"ydyk.jpg"],
                  nil];
    text = @"YADYOK is for preparatory classes. To start the your department at B.U first you can take english proficiency exam to show your english level. YADYOK is the part of the school that study english course for preparatory class students.";
    location = [[CLLocation alloc] initWithLatitude: 41.087382 longitude: 29.043671];
    Building *yadyok = [[Building alloc] initWithLocation:location name:@"YADYOK"  images: imageArray info: text];
    [temp addObject:yadyok];
    
    annotation = [[PlaceAnnotation alloc] initWithPlace:yadyok];
    [_mapView addAnnotation:annotation];
    
    _locations = [temp copy];
    
    CLLocation *lastLocation = [locations lastObject];
	
	CLLocationAccuracy accuracy = [lastLocation horizontalAccuracy];
	
	NSLog(@"Received location %@ with accuracy %f", lastLocation, accuracy);
    
    if (accuracy != kCLLocationAccuracyBest) {
        MKCoordinateSpan span = MKCoordinateSpanMake(0.14, 0.14);
        MKCoordinateRegion region = MKCoordinateRegionMake([lastLocation coordinate], span);
        
        [_mapView setRegion:region animated:YES];
        
       
        
        [manager stopUpdatingLocation];
    }
}

#pragma mark - Camera View

- (void)cameraViewControllerDidFinish:(CameraViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)unityViewControllerDidFinish:(UnityViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"startAR"]) {
        [[segue destinationViewController] setDelegate:self];
		[[segue destinationViewController] setLocations:_locations];
		[[segue destinationViewController] setUserLocation:[_mapView userLocation]];
    }    
}


@end
