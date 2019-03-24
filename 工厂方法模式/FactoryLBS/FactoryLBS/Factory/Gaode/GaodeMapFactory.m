//
//  GaodeMapFactory.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "GaodeMapFactory.h"
#import "GaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "GaodeLocationManager.h"

@implementation GaodeMapFactory

- (instancetype)initWithKey:(NSString *)key
{
    self = [super init];
    if (self) {
        [AMapServices sharedServices].apiKey = key;
    }
    return self;
}

- (id<MapViewProtocol>)createMapView:(CGRect)frame
{
    return [[GaodeMapView alloc] initWithFrame:frame];
}

- (id<LocationProtocol>)getLocationManager
{
    return [[GaodeLocationManager alloc] init];
}

@end
