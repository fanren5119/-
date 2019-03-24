//
//  BaiduLocationReGeocode.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationReGeocode.h"
#import <BMKLocationkit/BMKLocationComponent.h>


NS_ASSUME_NONNULL_BEGIN

@interface BaiduLocationReGeocode : NSObject <LocationReGeocode>

- (instancetype)initWithReGeocode:(BMKLocationReGeocode *)reGeocode;

@end

NS_ASSUME_NONNULL_END
