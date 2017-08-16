//
//  NSDictionary+RemoveNullValue.m
//  NSDictionar
//
//  Created by RaoMeng on 2017/3/27.
//  Copyright © 2017年 TianyingJiuzhou Network Technology Co. Ltd. All rights reserved.
//

#import "NSDictionary+RemoveNullValue.h"

@implementation NSDictionary (RemoveNullValue)

- (NSDictionary *) delNullValueReturnDictioary {
    
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc]initWithDictionary:self];
    for (NSString *key in self.allKeys) {
        if ([[tempDic objectForKey:key] isEqual:[NSNull null]]) {
            [tempDic removeObjectForKey:key];
        }
    }
    return [tempDic mutableCopy];
}




@end
