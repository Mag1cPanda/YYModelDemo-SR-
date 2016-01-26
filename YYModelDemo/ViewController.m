//
//  ViewController.m
//  YYModelDemo
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "YYModel.h"
#import "SRTool.h"
#import "SRGoods.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadJsonData];
}

-(void)loadJsonData{
    
    //    NSString *url = @"http://api.smzdm.com/v1/yuanchuang/articles?f=iphone&s=561083b057156759800&imgmode=0&v=5.11&limit=20";
    
    NSString *url = @"http://api.smzdm.com/v2/util/banner?f=iphone&type=home&v=6.0";
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url parameters:nil progress:^(NSProgress * downloadProgress) {
        
//        NSLog(@"下载中");
        
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSString *jsonStr = [SRTool dictionaryToJson:responseObject];
        SRGoods *goods = [SRGoods yy_modelWithJSON:jsonStr];
        
        for (DataRows *rows in goods.data.rows) {
            NSLog(@"%@",rows.link);
        }
        
        
        
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
//        NSLog(@"失败");
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
