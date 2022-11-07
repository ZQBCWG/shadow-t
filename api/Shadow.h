#import <Foundation/Foundation.h>
#import <AppSupport/CPDistributedMessagingCenter.h>

@class NSString, NSArray;

@interface Shadow : NSObject
- (void)setMessagingCenter:(CPDistributedMessagingCenter *)center;
- (void)setURLSchemes:(NSArray<NSString *>*)u;
- (BOOL)isCallerTweak:(NSArray<NSNumber *>*)backtrace;
- (BOOL)isPathRestricted:(NSString *)path;
- (BOOL)isURLRestricted:(NSURL *)url;
@end