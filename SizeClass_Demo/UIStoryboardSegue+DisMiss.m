//
//  UIStoryboardSegue+DisMiss.m
//  SizeClass_Demo
//
//  Created by jamalping on 15/5/19.
//  Copyright (c) 2015年 李小平. All rights reserved.
//

#import "UIStoryboardSegue+DisMiss.h"

@implementation UIStoryboardSegue (DisMiss)

@end

@interface DisMiss : UIStoryboardSegue

@end

@implementation DisMiss

- (void)perform
{
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end


@interface pop : UIStoryboardSegue

@end

@implementation pop

- (void)perform
{
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.navigationController popViewControllerAnimated:YES];
}

@end
