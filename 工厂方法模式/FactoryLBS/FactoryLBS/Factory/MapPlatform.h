//
//  MapPlatform.h
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPlatform : NSObject

@property (nonatomic, strong) NSString *factoryName;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, assign) BOOL      isOpen;

+ (NSArray *)deserilizerWithDictArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
