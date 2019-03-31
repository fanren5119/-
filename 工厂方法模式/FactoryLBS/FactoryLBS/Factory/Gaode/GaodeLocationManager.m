//
//  GaodeLocationManager.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "GaodeLocationManager.h"
#import <AMapFoundationKit/AMapFoundationKit.h>

#import <AMapLocationKit/AMapLocationKit.h>
#import "GaodeLocationReGeocode.h"

@interface GaodeLocationManager () <AMapLocationManagerDelegate>

@property (nonatomic, strong) AMapLocationManager *location;

@end

@implementation GaodeLocationManager

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
        _location = [[AMapLocationManager alloc] init];
    }
    return self;
}

+ (BOOL)headingAvailable
{
    return [AMapLocationManager headingAvailable];
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
    return [_location requestLocationWithReGeocode:withReGeocode completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
        GaodeLocationReGeocode *geocode = [[GaodeLocationReGeocode alloc] initWithReGeocode:regeocode];
        if (completionBlock) {
            completionBlock(location, geocode, error);
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

- (void)amapLocationManager:(AMapLocationManager *)manager didFailWithError:(NSError *)error
{
    if ([_delegate respondsToSelector:@selector(locationManager:didFailWithError:)]) {
        [_delegate locationManager:self didFailWithError:error];
    }
}

- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateLocation:(CLLocation *)location reGeocode:(AMapLocationReGeocode *)reGeocode
{
    if ([_delegate respondsToSelector:@selector(locationManager:didUpdateLocation:reGeocode:)]) {
        id<LocationReGeocode> lGeocode = [[GaodeLocationReGeocode alloc] initWithReGeocode:reGeocode];
        [_delegate locationManager:self didUpdateLocation:location reGeocode:lGeocode];
    }
}

- (void)amapLocationManager:(AMapLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if ([_delegate respondsToSelector:@selector(locationManager:didChangeAuthorizationStatus:)]) {
        [_delegate locationManager:self didChangeAuthorizationStatus:status];
    }
}

- (BOOL)amapLocationManagerShouldDisplayHeadingCalibration:(AMapLocationManager *)manager
{
    if ([_delegate respondsToSelector:@selector(locationManagerShouldDisplayHeadingCalibration:)]) {
        return [_delegate locationManagerShouldDisplayHeadingCalibration:self];
    }
    return NO;
}

- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    if ([_delegate respondsToSelector:@selector(locationManager:didUpdateHeading:)]) {
        [_delegate locationManager:self didUpdateHeading:newHeading];
    }
}

@end
