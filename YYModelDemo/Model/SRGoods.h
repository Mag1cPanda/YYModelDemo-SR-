//
//  SRGoods.h
//  YYModelDemo
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"
@interface DataRows : NSObject <NSCoding, NSCopying>
@property (nonatomic, copy) NSString *img;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *channel;
@property (nonatomic, copy) NSString *link;
@end

@interface LittleBanner : NSObject <NSCoding, NSCopying>
@property (nonatomic, copy) NSString *flag;
@property (nonatomic, copy) NSString *img;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *link;
@end

@interface GoodsData : NSObject <NSCoding, NSCopying>
@property (nonatomic, strong) NSArray *rows;
@property (nonatomic, strong) NSArray *little_banner;
@end

@interface SRGoods : NSObject <NSCoding, NSCopying>
@property (nonatomic, copy) NSString *error_code;
@property (nonatomic, copy) NSString *s;
@property (nonatomic, copy) NSString *error_msg;
@property (nonatomic, strong) GoodsData *data;
@end
