//
//  BaiduMapFactory.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BMKLocationkit/BMKLocationComponent.h>
#import "BaiduLocationManager.h"

@interface BaiduMapFactory () <BMKLocationAuthDelegate>

@property (nonatomic, strong) BMKMapManager *mapManager;

@end

@implementation BaiduMapFactory

- (instancetype)initWithKey:(NSString *)key
{
    self = [super init];
    if (self) {
        _mapManager = [[BMKMapManager alloc] init];
        // 如果要关注网络及授权验证事件，请设定generalDelegate参数
        BOOL ret = [_mapManager start:key  generalDelegate:nil];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
        
        [[BMKLocationAuth sharedInstance] checkPermisionWithKey:key authDelegate:self];
    }
    return self;
}

- (id<MapViewProtocol>)createMapView:(CGRect)frame
{
    return [[BaiduMapView alloc] initWithFrame:frame];
}

- (id<LocationProtocol>)getLocationManager
{
    return [[BaiduLocationManager alloc] init];
}

@end
