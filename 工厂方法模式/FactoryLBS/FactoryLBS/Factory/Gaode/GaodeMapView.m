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

@end
