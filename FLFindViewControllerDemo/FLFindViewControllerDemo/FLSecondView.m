//
//  FLSecondView.m
//  FLFindViewControllerDemo
//
//  Created by clarence on 16/11/14.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "FLSecondView.h"
#import "NSObject+UIViewController.h"
#import "FLThirdViewController.h"
@implementation FLSecondView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.fl_viewController.navigationController pushViewController:[[FLThirdViewController alloc] init] animated:YES];
}

@end
