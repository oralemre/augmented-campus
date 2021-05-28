//
//  GEOLocations.h
//  AR Kit
//
//


#import "ARLocationDelegate.h"
 
@class ARCoordinate;

@interface GEOLocations : NSObject

@property(nonatomic,assign) id<ARLocationDelegate> delegate;

- (id)initWithDelegate:(id<ARLocationDelegate>) aDelegate;
- (NSMutableArray*)returnLocations;


@end
