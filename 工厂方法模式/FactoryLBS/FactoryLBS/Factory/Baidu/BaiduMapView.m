//
//  BaiduMapView.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
#import "BaiduLocationManager.h"


@interface BMKMapViewDelegateImp : NSObject <LocationProtocolDelegate, BMKMapViewDelegate>

- (instancetype)initWithDelegate:(id<MapViewDelegate>)delegate;

@property (nonatomic, weak) id<MapViewDelegate> delegate;

@end

@implementation BMKMapViewDelegateImp

- (instancetype)initWithDelegate:(id<MapViewDelegate>)delegate
{
    self = [super init];
    if (self) {
        _delegate = delegate;
    }
    return self;
}

- (void)locationManager:(id<LocationProtocol>)manager didUpdateLocation:(CLLocation *)location reGeocode:(id<LocationReGeocode>)reGeocode
{
    if ([self.delegate respondsToSelector:@selector(locationDidUpdateHeading:)]) {
        [self.delegate locationDidUpdateLocation:location reGeocode:reGeocode];
    }
}

- (void)locationManager:(id<LocationProtocol>)manager didUpdateHeading:(CLHeading *)newHeading
{
    if ([self.delegate respondsToSelector:@selector(locationDidUpdateHeading:)]) {
        [self.delegate locationDidUpdateHeading:newHeading];
    }
}


@end


@interface BaiduMapView () <BMKMapViewDelegate>

@property (nonatomic, strong) BMKMapView *bmkMapView;
@property (nonatomic, strong) BaiduLocationManager *locationManger;
@property (nonatomic, strong) BMKMapViewDelegateImp *deleteImp;

@end

@implementation BaiduMapView

@synthesize showsUserLocation = _showsUserLocation;
@synthesize userTrackingMode = _userTrackingMode;
@synthesize delegate = _delegate;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        _bmkMapView = [[BMKMapView alloc]initWithFrame:frame];
        _bmkMapView.delegate = self;
    }
    return self;
}

- (UIView *)mapView
{
    return _bmkMapView;
}

- (void)setShowsUserLocation:(BOOL)showsUserLocation
{
    _showsUserLocation = showsUserLocation;
    _bmkMapView.showsUserLocation = showsUserLocation;
}

- (void)setUserTrackingMode:(MAPUserTrackingMode)userTrackingMode
{
    _userTrackingMode = userTrackingMode;
    _bmkMapView.userTrackingMode = (BMKUserTrackingMode)userTrackingMode;
}

- (void)setDelegate:(id<MapViewDelegate>)delegate
{
    self.deleteImp = [[BMKMapViewDelegateImp alloc] initWithDelegate:delegate];
    _bmkMapView.delegate = self.deleteImp;
}

/**
 * @brief 向地图窗口添加标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 * @param annotation 要添加的标注
 */
- (void)addAnnotation:(id <MAPAnnotation>)annotation
{
    BMKPointAnnotation *bmkannoataion = [[BMKPointAnnotation alloc] init];
    bmkannoataion.coordinate = annotation.coordinate;
    bmkannoataion.title = annotation.title;
    bmkannoataion.subtitle = annotation.subtitle;
    [_bmkMapView addAnnotation:bmkannoataion];
}

- (void)startLocation
{
    self.locationManger = [[BaiduLocationManager alloc] init];
    self.locationManger.delegate = self.deleteImp;
    [self.locationManger startUpdatingLocation];
}

- (void)stopLocation
{
    [self.locationManger stopUpdatingLocation];
}

/**
 * @brief 向地图窗口添加一组标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 *@param annotations 要添加的标注数组
 */
- (void)addAnnotations:(NSArray *)annotations
{
    for (id<MAPAnnotation> annotation in annotations) {
        BMKPointAnnotation *bmkannoataion = [[BMKPointAnnotation alloc] init];
        bmkannoataion.coordinate = annotation.coordinate;
        bmkannoataion.title = annotation.title;
        bmkannoataion.subtitle = annotation.subtitle;
        [_bmkMapView addAnnotation:bmkannoataion];
    }
}

- (void)setCenterLocation:(CLLocation *)centerLocation animated:(BOOL)animated
{
    BMKUserLocation *location = [[BMKUserLocation alloc] init];
    location.location = centerLocation;
    [_bmkMapView updateLocationData:location];
    [_bmkMapView setCenterCoordinate:centerLocation.coordinate animated:animated];
}

@end
