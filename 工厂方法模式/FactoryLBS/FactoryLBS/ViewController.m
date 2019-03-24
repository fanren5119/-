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

#import <BMKLocationkit/BMKLocationComponent.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

#import <AMapLocationKit/AMapLocationKit.h>

@interface ViewController () <LocationProtocolDelegate>

//@property (nonatomic, strong) BMKLocationManager *locationManager;
//@property (nonatomic, strong) AMapLocationManager *locationManager;
@property (nonatomic, strong) id<LocationProtocol> location;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    id<MapFactoryProtocol> factory = [[MapEngine shared] getFactory];
    id<MapViewProtocol> mapView = [factory createMapView:self.view.bounds];
    [self.view addSubview:mapView.mapView];
    
    _location = [factory getLocationManager];
    _location.delegate = self;
    [_location startUpdatingLocation];
}

- (void)locationManager:(id<LocationProtocol>)manager didFailWithError:(NSError *)error
{
    NSLog(@"error = %@", error);
}

- (void)locationManager:(id<LocationProtocol>)manager didUpdateLocation:(CLLocation *)location reGeocode:(id<LocationReGeocode>)reGeocode
{
    
}


@end
