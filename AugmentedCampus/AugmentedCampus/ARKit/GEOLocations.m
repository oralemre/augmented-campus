//
//  GEOLocations.m
//  AR Kit
//
//


#import "GEOLocations.h"

@implementation GEOLocations

@synthesize delegate;

- (id)initWithDelegate:(id<ARLocationDelegate>) aDelegate
{
	[self setDelegate:aDelegate];

	return self;
}

- (NSMutableArray*)returnLocations 
{
	return [delegate geoLocations];
}

- (void)dealloc
{
	
}



@end
