//
//  BaiduLocationReGeocode.m
//  FactoryLBS
//
//  Created by wanglei on 2019/3/24.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "BaiduLocationReGeocode.h"

@interface BaiduLocationReGeocode ()

@property (nonatomic, strong) BMKLocationReGeocode *reGeocode;

@end

@implementation BaiduLocationReGeocode

@synthesize formattedAddress = _formattedAddress;
@synthesize country = _country;
@synthesize province = _province;
@synthesize city = _city;
@synthesize district = _district;
@synthesize citycode = _citycode;
@synthesize adcode = _adcode;
@synthesize street = _street;
@synthesize number = _number;
@synthesize POIName = _POIName;
@synthesize AOIName = _AOIName;

- (instancetype)initWithReGeocode:(BMKLocationReGeocode *)reGeocode
{
    self = [super init];
    if (self) {
        _reGeocode = reGeocode;
    }
    return self;
}

- (NSString *)formattedAddress
{
    return _reGeocode.locationDescribe;
}

- (NSString *)country
{
    return _reGeocode.country;
}

- (NSString *)province
{
    return _reGeocode.province;
}

- (NSString *)city
{
    return _reGeocode.city;
}

- (NSString *)district
{
    return _reGeocode.district;
}


- (NSString *)citycode
{
    return _reGeocode.cityCode;
}

- (NSString *)adcode
{
    return _reGeocode.adCode;
}

- (NSString *)street
{
    return _reGeocode.street;
}

- (NSString *)number
{
    return _reGeocode.streetNumber;
}


@end
