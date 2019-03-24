//
//  GaodeLocationReGeocode.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationReGeocode.h"
#import <AMapLocationKit/AMapLocationKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GaodeLocationReGeocode : NSObject <LocationReGeocode>

- (instancetype)initWithReGeocode:(AMapLocationReGeocode *)reGeocode;

@end

NS_ASSUME_NONNULL_END
