//
//  DESEncryption.h
//  StrategyPattern
//
//  Created by wanglei on 2019/4/1.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EncryptionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

//角色二:具体的策略(DES加密)

@interface DESEncryption : NSObject <EncryptionProtocol>

@end

NS_ASSUME_NONNULL_END
