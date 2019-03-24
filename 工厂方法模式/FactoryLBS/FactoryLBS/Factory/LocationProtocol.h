//
//  LocationProtocol.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationReGeocode.h"
#import <CoreLocation/CoreLocation.h>

@protocol LocationProtocol;

@protocol LocationProtocolDelegate <NSObject>

@optional

/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)locationManager:(id<LocationProtocol>)manager didFailWithError:(NSError *)error;

/**
 *  @brief 连续定位回调函数.注意：如果实现了本方法，则定位信息不会通过amapLocationManager:didUpdateLocation:方法回调。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param location 定位结果。
 *  @param reGeocode 逆地理信息。
 */
- (void)locationManager:(id<LocationProtocol>)manager didUpdateLocation:(CLLocation *)location reGeocode:(id<LocationReGeocode>)reGeocode;

/**
 *  @brief 定位权限状态改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param status 定位权限状态。
 */
- (void)locationManager:(id<LocationProtocol>)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status;

/**
 *  @brief 是否显示设备朝向校准
 *  @param manager 定位 AMapLocationManager 类。
 *  @return 是否显示设备朝向校准
 */
- (BOOL)locationManagerShouldDisplayHeadingCalibration:(id<LocationProtocol>)manager;

/**
 *  @brief 设备方向改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param newHeading 设备朝向。
 */
- (void)locationManager:(id<LocationProtocol>)manager didUpdateHeading:(CLHeading *)newHeading;

@end

NS_ASSUME_NONNULL_BEGIN

typedef void (^LocatingCompletionBlock)(CLLocation *location, id<LocationReGeocode> regeocode, NSError *error);

@protocol LocationProtocol <NSObject>

@property (nonatomic, weak) id<LocationProtocolDelegate> delegate;

@property(nonatomic, assign) CLLocationDistance distanceFilter;

@property(nonatomic, assign) CLLocationAccuracy desiredAccuracy;

///指定定位是否会被系统自动暂停。默认为NO。
@property(nonatomic, assign) BOOL pausesLocationUpdatesAutomatically;

///是否允许后台定位。默认为NO。只在iOS 9.0及之后起作用。设置为YES的时候必须保证 Background Modes 中的 Location updates 处于选中状态，否则会抛出异常。由于iOS系统限制，需要在定位未开始之前或定位停止之后，修改该属性的值才会有效果。
@property(nonatomic, assign) BOOL allowsBackgroundLocationUpdates;

@property(nonatomic, assign) NSInteger locationTimeout;

///指定单次定位逆地理超时时间,默认为5s。最小值是2s。注意单次定位请求前设置。
@property(nonatomic, assign) NSInteger reGeocodeTimeout;

///连续定位是否返回逆地理信息，默认NO。
@property (nonatomic, assign) BOOL locatingWithReGeocode;

/**
 *  @brief 设备是否支持方向识别
 *  @return YES:设备支持方向识别 ; NO:设备不支持支持方向识别
 */
+ (BOOL)headingAvailable;

/**
 *  @brief 开始获取设备朝向，如果设备支持方向识别，则会通过代理回调方法
 */
- (void)startUpdatingHeading;

/**
 *  @brief 停止获取设备朝向
 */
- (void)stopUpdatingHeading;

/**
 *  @brief 单次定位。如果当前正在连续定位，调用此方法将会失败，返回NO。\n该方法将会根据设定的 desiredAccuracy 去获取定位信息。如果获取的定位信息精确度低于 desiredAccuracy ，将会持续的等待定位信息，直到超时后通过completionBlock返回精度最高的定位信息。\n可以通过 stopUpdatingLocation 方法去取消正在进行的单次定位请求。
 *  @param withReGeocode 是否带有逆地理信息(获取逆地理信息需要联网)
 *  @param completionBlock 单次定位完成后的Block
 *  @return 是否成功添加单次定位Request
 */
- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode completionBlock:(LocatingCompletionBlock)completionBlock;

/**
 *  @brief 开始连续定位。调用此方法会cancel掉所有的单次定位请求。
 */
- (void)startUpdatingLocation;

/**
 *  @brief 停止连续定位。调用此方法会cancel掉所有的单次定位请求，可以用来取消单次定位。
 */
- (void)stopUpdatingLocation;

@end

NS_ASSUME_NONNULL_END
