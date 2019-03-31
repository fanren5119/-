//
//  MapPointAnnotation.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAPAnnotation.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapPointAnnotation : NSObject <MAPAnnotation>

///该点的坐标
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString              *title;
@property (nonatomic, copy) NSString              *subtitle;

@end

NS_ASSUME_NONNULL_END
