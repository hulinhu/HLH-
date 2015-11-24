//
//  ViewController.m
//  谓词
//
//  Created by 胡林虎 on 15/9/4.
//  Copyright (c) 2015年 胡林虎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    /**
     *      筛选用法
                NSArray
           (NSArray )filteredArrayUsingPredicate:(NSPredicate )predicate;
          NSMutableArray
            (void)filterUsingPredicate:(NSPredicate *)predicate;
     *
     */

    //自身属性 判读自身字符串的长度大于3
    NSArray *array = @[@"jim", @"cook", @"jobs", @"sdevm"];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"length > 3"];
    NSLog(@"%@", [array filteredArrayUsingPredicate:pre]);
    
    
    
//    字符串相关
//    CONTAINS(包含)
    NSArray *stringArray = [[NSArray alloc]initWithObjects:@"beijing",@"shanghai",@"guangzou",@"wuhan", nil];
    NSString *string = @"ang";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF CONTAINS %@",string];
    NSLog(@"%@",[stringArray filteredArrayUsingPredicate:pred]);
    
    
//    [cd]的用法
//    SELF CONTAINS
//    表示自身包含
//    [c] 忽略大小写[d] 忽略重音符号[cd]既不区分大小写，也不区分发音符号。
    

    NSArray *stringArray1 =[[NSArray alloc]initWithObjects:@"beijing",@"shanghai",@"guangzou",@"wuhan", nil];
    NSString *targetString = @"Ang";
    NSPredicate *pred1 = [NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] %@",targetString];
    NSLog(@"%@",[stringArray1 filteredArrayUsingPredicate:pred1]);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
