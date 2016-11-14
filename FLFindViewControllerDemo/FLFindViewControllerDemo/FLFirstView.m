//
//  FLFirstView.m
//  FLFindViewControllerDemo
//
//  Created by clarence on 16/11/14.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "FLFirstView.h"
#import "NSObject+UIViewController.h"
#import "FLSecondViewController.h"
@implementation FLFirstView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    FLSecondViewController *vc = [[FLSecondViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self.fl_viewController presentViewController:nav animated:YES completion:nil];
}

@end
