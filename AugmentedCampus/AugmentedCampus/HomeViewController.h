//
//  HomeViewController.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import "CameraViewController.h"
#import "HomeViewController.h"

@interface HomeViewController : UIViewController <CameraViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *virtualTour;
- (IBAction)virtualTourPressed:(id)sender;

@end
