//
//  MapEngine.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapEngine : NSObject

+ (instancetype)shared;

- (id<MapFactoryProtocol>)getFactory;

@end

NS_ASSUME_NONNULL_END
