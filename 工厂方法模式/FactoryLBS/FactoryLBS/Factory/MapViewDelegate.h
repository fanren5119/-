//
//  MapViewDelegate.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "LocationReGeocode.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MapViewDelegate <NSObject>

- (void)locationDidUpdateLocation:(CLLocation *)location reGeocode:(id<LocationReGeocode>)reGeocode;

- (void)locationDidUpdateHeading:(CLHeading *)newHeading;


@end

NS_ASSUME_NONNULL_END
