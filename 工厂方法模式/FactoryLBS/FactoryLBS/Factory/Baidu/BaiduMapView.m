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

@interface BaiduMapView () <BMKMapViewDelegate>

@property (nonatomic, strong) BMKMapView *bmkMapView;

@end

@implementation BaiduMapView

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


@end
