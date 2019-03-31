//
//  MAPAnnotation.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MAPAnnotation <NSObject>

///标注view中心坐标
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@optional

///获取annotation标题
@property (nonatomic, readonly, copy) NSString *title;

///获取annotation副标题
@property (nonatomic, readonly, copy) NSString *subtitle;

/**
 * @brief 设置标注的坐标，在拖拽时会被调用
 * @param newCoordinate 新的坐标值
 */
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end

NS_ASSUME_NONNULL_END
