//
//  MapFactoryProtocol.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewProtocol.h"
#import "LocationProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MapFactoryProtocol <NSObject>

- (instancetype)initWithKey:(NSString *)key;

- (id<MapViewProtocol>)createMapView:(CGRect)frame;

- (id<LocationProtocol>)getLocationManager;

@end

NS_ASSUME_NONNULL_END
