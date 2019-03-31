//
//  ViewController.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"
#import "LocationProtocol.h"
#import "MapEngine.h"
#import "MapPointAnnotation.h"

#import <BMKLocationkit/BMKLocationComponent.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

#import <AMapLocationKit/AMapLocationKit.h>

@interface ViewController () <LocationProtocolDelegate, MapViewDelegate>

//@property (nonatomic, strong) BMKLocationManager *locationManager;
//@property (nonatomic, strong) AMapLocationManager *locationManager;
@property (nonatomic, strong) id<LocationProtocol> location;
@property (nonatomic, strong) id<MapViewProtocol> mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    id<MapFactoryProtocol> factory = [[MapEngine shared] getFactory];
    _mapView = [factory createMapView:self.view.bounds];
    [self.view addSubview:_mapView.mapView];
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = UserTrackingModeFollowWithHeading;
    
    [_mapView startLocation];
//    _location = [factory getLocationManager];
//    _location.delegate = self;
//    [_location startUpdatingLocation];
//    [_location requestLocationWithReGeocode:YES completionBlock:^(CLLocation * _Nonnull location, id<LocationReGeocode>  _Nonnull regeocode, NSError * _Nonnull error) {
////        NSLog(@"location = %f : %f", location.coordinate.latitude, location.coordinate.longitude);
//
//        MapPointAnnotation *annoation = [[MapPointAnnotation alloc] init];
//        [annoation setCoordinate:location.coordinate];
//        annoation.title = regeocode.district;
//        annoation.subtitle = regeocode.formattedAddress;
//        [mapView addAnnotation:annoation];
//
//        [mapView setCenterLocation:location animated:NO];
//    }];
}

- (void)locationDidUpdateLocation:(CLLocation *)location reGeocode:(id<LocationReGeocode>)reGeocode
{
    [_mapView setCenterLocation:location animated:NO];
}

- (void)locationDidUpdateHeading:(CLHeading *)newHeading
{
    
}

@end
