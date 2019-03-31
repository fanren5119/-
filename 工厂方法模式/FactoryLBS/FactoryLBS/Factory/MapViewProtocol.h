//
//  MapViewProtocol.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "MAPAnnotation.h"
#import "MapViewDelegate.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, MAPUserTrackingMode) {
    UserTrackingModeNone = 0,             /// 普通定位模式
    UserTrackingModeHeading,              /// 定位方向模式
    UserTrackingModeFollow,               /// 定位跟随模式
    UserTrackingModeFollowWithHeading,    /// 定位罗盘模式
};

@protocol MapViewProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;

- (UIView *)mapView;

///是否显示用户位置
@property (nonatomic, assign, getter = isShowsUserLocation) BOOL showsUserLocation;

///定位用户位置的模式
@property (nonatomic, assign) MAPUserTrackingMode userTrackingMode;

@property (nonatomic, weak) id<MapViewDelegate> delegate;

/**
 *设定地图中心点坐标
 *@param centerLocation 要设定的地图中心点坐标，用经纬度表示
 *@param animated 是否采用动画效果
 */
- (void)setCenterLocation:(CLLocation *)centerLocation animated:(BOOL)animated;

// 百度地图默认不开启定位,需要去手动开启定位功能
- (void)startLocation;

- (void)stopLocation;

#pragma mark - Annotations func

/**
 * @brief 向地图窗口添加标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 * @param annotation 要添加的标注
 */
- (void)addAnnotation:(id <MAPAnnotation>)annotation;

/**
 * @brief 向地图窗口添加一组标注，需要实现MAMapViewDelegate的-mapView:viewForAnnotation:函数来生成标注对应的View
 *@param annotations 要添加的标注数组
 */
- (void)addAnnotations:(NSArray *)annotations;


@end

NS_ASSUME_NONNULL_END
