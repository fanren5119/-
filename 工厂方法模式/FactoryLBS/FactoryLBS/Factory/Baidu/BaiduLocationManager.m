//
//  BaiduLocationManager.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "BaiduLocationManager.h"
#import <BMKLocationkit/BMKLocationComponent.h>
#import "BaiduLocationReGeocode.h"

@interface BaiduLocationManager () <BMKLocationManagerDelegate>

@property (nonatomic, strong) BMKLocationManager *location;

@end

@implementation BaiduLocationManager

@synthesize delegate = _delegate;
@synthesize distanceFilter = _distanceFilter;
@synthesize desiredAccuracy = _desiredAccuracy;
@synthesize pausesLocationUpdatesAutomatically = _pausesLocationUpdatesAutomatically;
@synthesize allowsBackgroundLocationUpdates = _allowsBackgroundLocationUpdates;
@synthesize locationTimeout = _locationTimeout;
@synthesize reGeocodeTimeout = _reGeocodeTimeout;
@synthesize locatingWithReGeocode = _locatingWithReGeocode;

- (void)setDelegate:(id<LocationProtocolDelegate>)delegate
{
    _delegate = delegate;
    _location.delegate = self;
}

- (void)setDistanceFilter:(CLLocationDistance)distanceFilter
{
    _distanceFilter = distanceFilter;
    _location.distanceFilter = distanceFilter;
}

- (void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy
{
    _desiredAccuracy = desiredAccuracy;
    _location.desiredAccuracy = desiredAccuracy;
}

- (void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically
{
    _pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
    _location.pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
}

- (void)setLocationTimeout:(NSInteger)locationTimeout
{
    _locationTimeout = locationTimeout;
    _location.locationTimeout = locationTimeout;
}

- (void)setReGeocodeTimeout:(NSInteger)reGeocodeTimeout
{
    _reGeocodeTimeout = reGeocodeTimeout;
    _location.reGeocodeTimeout = reGeocodeTimeout;
}

- (void)setLocatingWithReGeocode:(BOOL)locatingWithReGeocode
{
    _locatingWithReGeocode = locatingWithReGeocode;
    _location.locatingWithReGeocode = locatingWithReGeocode;
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)allowsBackgroundLocationUpdates
{
    _allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
    _location.allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _location = [[BMKLocationManager alloc] init];
    }
    return self;
}

+ (BOOL)headingAvailable
{
    return [BMKLocationManager headingAvailable];
}

- (void)startUpdatingHeading
{
    [_location startUpdatingHeading];
}

- (void)stopUpdatingHeading
{
    [_location stopUpdatingHeading];
}

- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(LocatingCompletionBlock)completionBlock
{
    return [_location requestLocationWithReGeocode:withReGeocode withNetworkState:YES completionBlock:^(BMKLocation * _Nullable location, BMKLocationNetworkState state, NSError * _Nullable error) {
        if (completionBlock) {
//            completionBlock(location.location, nil, error);
        }
    }];
}

- (void)startUpdatingLocation
{
    [_location startUpdatingLocation];
}

- (void)stopUpdatingLocation
{
    [_location stopUpdatingLocation];
}


#pragma mark - locationDelegate

- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didFailWithError:(NSError * _Nullable)error
{
    if ([_delegate respondsToSelector:@selector(locationManager:didFailWithError:)]) {
        [_delegate locationManager:self didFailWithError:error];
    }
}

- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didUpdateLocation:(BMKLocation * _Nullable)location orError:(NSError * _Nullable)error
{
    if ([_delegate respondsToSelector:@selector(locationManager:didUpdateLocation:reGeocode:)]) {
        id<LocationReGeocode> reGeocode = [[BaiduLocationReGeocode alloc] initWithReGeocode:location.rgcData];
        [_delegate locationManager:self didUpdateLocation:location.location reGeocode:reGeocode];
    }
}

- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if ([_delegate respondsToSelector:@selector(locationManager:didChangeAuthorizationStatus:)]) {
        [_delegate locationManager:self didChangeAuthorizationStatus:status];
    }
}

- (BOOL)BMKLocationManagerShouldDisplayHeadingCalibration:(BMKLocationManager * _Nonnull)manager
{
    if ([_delegate respondsToSelector:@selector(locationManagerShouldDisplayHeadingCalibration:)]) {
        return [_delegate locationManagerShouldDisplayHeadingCalibration:self];
    }
    return NO;
}

- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager
          didUpdateHeading:(CLHeading * _Nullable)heading
{
    if ([_delegate respondsToSelector:@selector(locationManager:didUpdateHeading:)]) {
        [_delegate locationManager:self didUpdateHeading:heading];
    }
}


@end
