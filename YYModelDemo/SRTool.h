//
//  SRTool.h
//  MJExtensionTest
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SRTool : NSObject
/**
 *  json转换成字典
 *
 *  @param jsonString JSON格式的字符串
 *
 *  @return 返回字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/**
 *  字典转成JSON字符串
 *
 *  @param dic 字典
 *
 *  @return 返回JSON字符串
 */
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;

//获取屏幕宽度
+(CGFloat)getUIScreenWidth;
//获取屏幕高度
+(CGFloat)getUIScreenHeight;
//获取系统版本
+(float)getVersion;
//获取状态栏高度
+(int)getStatusBarHeight;
//手机号验证
+(BOOL) isValidateMobile:(NSString *)mobile;
//邮箱验证
+(BOOL)isValidateEmail:(NSString *)email;
@end
