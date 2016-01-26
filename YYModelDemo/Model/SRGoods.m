//
//  SRGoods.m
//  YYModelDemo
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "SRGoods.h"
#define YYModelSynthCoderAndHash \
- (void)encodeWithCoder:(NSCoder *)aCoder { [self yy_modelEncodeWithCoder:aCoder]; } \
- (id)initWithCoder:(NSCoder *)aDecoder { return [self yy_modelInitWithCoder:aDecoder]; } \
- (id)copyWithZone:(NSZone *)zone { return [self yy_modelCopy]; } \
- (NSUInteger)hash { return [self yy_modelHash]; } \
- (BOOL)isEqual:(id)object { return [self yy_modelIsEqual:object]; }


@implementation DataRows

YYModelSynthCoderAndHash
@end

@implementation LittleBanner

YYModelSynthCoderAndHash
@end

@implementation GoodsData
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"rows" : [DataRows class],
             @"little_banner" : [LittleBanner class]};
}
YYModelSynthCoderAndHash
@end

@implementation SRGoods

YYModelSynthCoderAndHash
@end