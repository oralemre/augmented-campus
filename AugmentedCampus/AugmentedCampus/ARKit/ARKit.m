//
//  ARKit.m
//  AR Kit
//
//


#import "ARKit.h"

@implementation ARKit

+(BOOL)deviceSupportsAR{
    
    // Go thru and see if the device supports Video Capture.
    NSArray *devices = [AVCaptureDevice devices];

    BOOL suportsVideo = NO;
    
    if (devices != nil && [devices count] > 0) {
        for (AVCaptureDevice *device in devices) {
            if ([device hasMediaType:AVMediaTypeVideo]) {
                suportsVideo = YES;
                break;
            }
        }
    }
    
    if (!suportsVideo)
        return NO;
   

	if(![CLLocationManager headingAvailable]){
		return NO;
	}
	
	return YES;
}
@end
