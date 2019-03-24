//
//  MapEngine.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "MapEngine.h"
#import "MapFactoryProtocol.h"
#import "MapPlatform.h"

static MapEngine *__engine = nil;

@interface MapEngine ()

@property (nonatomic, strong) NSArray *platformArray;

@end

@implementation MapEngine

+ (instancetype)shared
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __engine = [[MapEngine alloc] init];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"MapView" ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        __engine.platformArray = [MapPlatform deserilizerWithDictArray:array];
    });
    return __engine;
}

- (id<MapFactoryProtocol>)getFactory
{
    for (MapPlatform *platform in self.platformArray) {
        if (platform.isOpen) {
            Class class = NSClassFromString(platform.factoryName);
            return [[class alloc] initWithKey:platform.key];
        }
    }
    return nil;
}

@end
