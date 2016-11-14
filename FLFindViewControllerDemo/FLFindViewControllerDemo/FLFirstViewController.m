//
//  ViewController.m
//  FLFindViewControllerDemo
//
//  Created by clarence on 16/11/14.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "FLFirstViewController.h"
#import "FLFirstView.h"
@interface FLFirstViewController ()

@end

@implementation FLFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    FLFirstView *firstView = [[FLFirstView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    firstView.backgroundColor = [UIColor redColor];
    firstView.center = self.view.center;
    [self.view addSubview:firstView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
