//
//  EncryptionProtocol.h
//  StrategyPattern
//
//  Created by wanglei on 2019/4/1.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


// 角色一:策略接口

@protocol EncryptionProtocol <NSObject>

- (NSString *)encrypt:(NSString *)plainText key:(NSString *)key iv:(NSString *)iv;

- (NSString *)decrypt:(NSString *)cipherText key:(NSString *)key iv:(NSString *)iv;

@end

NS_ASSUME_NONNULL_END
