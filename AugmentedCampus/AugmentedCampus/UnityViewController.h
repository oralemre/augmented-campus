//
//  UnityViewController.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/29/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import <UIKit/UIKit.h>


@class UnityViewController;

@protocol UnityViewControllerDelegate
- (void)unityViewControllerDidFinish:(UnityViewController *)controller;
@end

@interface UnityViewController : UIViewController
@property (weak, nonatomic) id <UnityViewControllerDelegate> delegate;
- (IBAction)done:(id)sender;
@end
