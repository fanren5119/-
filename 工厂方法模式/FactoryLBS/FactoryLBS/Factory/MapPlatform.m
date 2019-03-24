//
//  MapPlatform.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "MapPlatform.h"

@implementation MapPlatform

+ (NSArray *)deserilizerWithDictArray:(NSArray *)array
{
    NSMutableArray *entityArray = [NSMutableArray arrayWithCapacity:0];
    for (NSDictionary *dict in array) {
        MapPlatform *platform = [self deserilizerWithDict:dict];
        [entityArray addObject:platform];
    }
    return entityArray;
}

+ (MapPlatform *)deserilizerWithDict:(NSDictionary *)dict
{
    MapPlatform *platform = [[MapPlatform alloc] init];
    platform.factoryName = [dict objectForKey:@"factoryName"];
    platform.id = [[dict objectForKey:@"id"] integerValue];
    platform.key = [dict objectForKey:@"key"];
    platform.isOpen = [[dict objectForKey:@"isOpen"] boolValue];
    return platform;
}

@end
