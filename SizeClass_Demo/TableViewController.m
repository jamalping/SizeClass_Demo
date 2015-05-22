//
//  TableViewController.m
//  SizeClass_Demo
//
//  Created by jamalping on 15/5/20.
//  Copyright (c) 2015年 李小平. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController
/*
 
 
 使用规则
 |: 表示父视图
 -:表示距离
 V:  :表示垂直
 H:  :表示水平
 >= :表示视图间距、宽度和高度必须大于或等于某个值
 <= :表示视图间距、宽度和高度必须小宇或等于某个值
 == :表示视图间距、宽度或者高度必须等于某个值
 @  :>=、<=、==  限制   最大为  1000
 1.|-[view]-|:  视图处在父视图的左右边缘内
 2.|-[view]  :   视图处在父视图的左边缘
 3.|[view]   :   视图和父视图左边对齐
 4.-[view]-  :  设置视图的宽度高度
 5.|-30.0-[view]-30.0-|:  表示离父视图 左右间距  30
 6.[view(200.0)] : 表示视图宽度为 200.0
 7.|-[view(view1)]-[view1]-| :表示视图宽度一样，并且在父视图左右边缘内
 8. V:|-[view(50.0)] : 视图高度为  50
 9: V:|-(==padding)-[imageView]->=0-[button]-(==padding)-| : 表示离父视图的距离
 为Padding,这两个视图间距必须大于或等于0并且距离底部父视图为 padding。
 10:  [wideView(>=60@700)]  :视图的宽度为至少为60 不能超过  700
 11: 如果没有声明方向默认为  水平  V:
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"代码设置约束";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UILabel *label1 = [[UILabel alloc] init];
    label1.translatesAutoresizingMaskIntoConstraints = NO;
    label1.text = @"这是label1";
    label1.backgroundColor = [UIColor redColor];
    [self.view addSubview:label1];

    UILabel *label2 = [[UILabel alloc] init];
    label2.translatesAutoresizingMaskIntoConstraints = NO;
    label2.text = @"这是label2";
    label2.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc] init];
    label3.translatesAutoresizingMaskIntoConstraints = NO;
    label3.text = @"这是label3";
    label3.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:label3];
    
#warning important
    NSDictionary *viewDic = NSDictionaryOfVariableBindings(label1,label2,label3);
    NSArray *layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[label1(30)]-30-[label2(label1)]-bottomSpace-[label3(label1)]" options:NSLayoutFormatAlignAllTrailing metrics:@{@"bottomSpace":@(100)} views:viewDic];
    [self.view addConstraints:layoutContraint1];
    layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"|-30-[label1]-(apadding)-|" options:0 metrics:@{@"apadding":@(10)} views:viewDic];
    [self.view addConstraints:layoutContraint1];
    layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"[label2(label1)]" options:0 metrics:nil views:viewDic];
    [self.view addConstraints:layoutContraint1];
}

@end
