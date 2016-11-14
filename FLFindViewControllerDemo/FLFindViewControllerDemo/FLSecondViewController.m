//
//  FLSecondViewController.m
//  FLFindViewControllerDemo
//
//  Created by clarence on 16/11/14.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "FLSecondViewController.h"
#import "FLSecondView.h"
@interface FLSecondViewController ()

@end

@implementation FLSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    FLSecondView *secondView = [[FLSecondView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    secondView.backgroundColor = [UIColor redColor];
    secondView.center = self.view.center;
    [self.view addSubview:secondView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
