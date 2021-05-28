//
//  Place.h
//  AugmentedCampus
//
//  Created by Emre Oral on 5/22/16.
//  Copyright © 2016 Emre Oral. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLLocation;

@interface Building : NSObject

@property (nonatomic, strong) CLLocation *location;
@property (nonatomic, copy) NSString *placeName;
@property (nonatomic, copy) NSString *info;
@property (nonatomic, copy) NSArray *images;

- (id)initWithLocation:(CLLocation *)location name:(NSString *)name images:(NSArray *) images info:(NSString *)info;

@end
