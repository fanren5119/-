//
//  main.m
//  StrategyPattern
//
//  Created by wanglei on 2019/4/1.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DESEncryption.h"
#import "AESEncryption.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSString *key = @"PinkieTest";
        NSString *iv = @"aaaaaa";
        
        NSString *text = @"text";
        
        
        id<EncryptionProtocol> encrypt = [[AESEncryption alloc] init];
        NSString *text1 = [encrypt encrypt:text key:key iv:iv];
        NSString *text2 = [encrypt decrypt:text1 key:key iv:iv];
        
        NSLog(@"----%@----%@", text1, text2);
    }
    return 0;
}
