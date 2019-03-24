//
//  MapViewProtocol.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MapViewProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;

- (UIView *)mapView;

@end

NS_ASSUME_NONNULL_END
