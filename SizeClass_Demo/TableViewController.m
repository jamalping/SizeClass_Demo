//
//  TableViewController.m
//  SizeClass_Demo
//
//  Created by jamalping on 15/5/20.
//  Copyright (c) 2015年 李小平. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController

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
    
    NSDictionary *viewDic = NSDictionaryOfVariableBindings(label1,label2);
    NSArray *layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[label1(30)]-30-[label2(30)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewDic];
    [self.view addConstraints:layoutContraint1];
    layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[label1]-10-|" options:0 metrics:nil views:viewDic];
    [self.view addConstraints:layoutContraint1];
    layoutContraint1 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[label2]-20-|" options:0 metrics:nil views:viewDic];
    [self.view addConstraints:layoutContraint1];
}

@end
