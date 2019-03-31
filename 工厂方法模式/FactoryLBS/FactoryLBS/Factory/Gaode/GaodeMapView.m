//
//  GaodeMapView.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "GaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeMapView ()

@property (nonatomic, strong) MAMapView *aMapView;

@end

@implementation GaodeMapView

@synthesize showsUserLocation = _showsUserLocation;
@synthesize userTrackingMode = _userTrackingMode;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        _aMapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (MAMapView *)mapView
{
    return _aMapView;
}

- (void)setShowsUserLocation:(BOOL)showsUserLocation
{
    _showsUserLocation = showsUserLocation;
    _aMapView.showsUserLocation = showsUserLocation;
}

- (void)setUserTrackingMode:(MAPUserTrackingMode)userTrackingMode
{
    _userTrackingMode = userTrackingMode;
    switch (userTrackingMode) {
        case UserTrackingModeNone:
            _aMapView.userTrackingMode = MAUserTrackingModeNone;
            break;
        case UserTrackingModeHeading:
            _aMapView.userTrackingMode = MAUserTrackingModeNone;
            break;
        case UserTrackingModeFollow:
            _aMapView.userTrackingMode = MAUserTrackingModeFollow;
            break;
        case UserTrackingModeFollowWithHeading:
            _aMapView.userTrackingMode = MAUserTrackingModeFollowWithHeading;
            break;
        default:
            break;
    }
}

/**
 * @brief 向地图窗口添加标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 * @param annotation 要添加的标注
 */
- (void)addAnnotation:(id <MAPAnnotation>)annotation
{
    MAPointAnnotation *bmkannoataion = [[MAPointAnnotation alloc] init];
    bmkannoataion.coordinate = annotation.coordinate;
    bmkannoataion.title = annotation.title;
    bmkannoataion.subtitle = annotation.subtitle;
    [_aMapView addAnnotation:bmkannoataion];
}

/**
 * @brief 向地图窗口添加一组标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 *@param annotations 要添加的标注数组
 */
- (void)addAnnotations:(NSArray *)annotations
{
    for (id<MAPAnnotation> annotation in annotations) {
        MAPointAnnotation *bmkannoataion = [[MAPointAnnotation alloc] init];
        bmkannoataion.coordinate = annotation.coordinate;
        bmkannoataion.title = annotation.title;
        bmkannoataion.subtitle = annotation.subtitle;
        [_aMapView addAnnotation:bmkannoataion];
    }
}

- (void)setCenterLocation:(CLLocation *)centerLocation animated:(BOOL)animated
{
    [_aMapView setCenterCoordinate:centerLocation.coordinate animated:animated];
}

- (void)startLocation
{
    
}

- (void)stopLocation
{
    
}

@end
