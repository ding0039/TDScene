//
//  TDTabBarController.m
//  TDScene
//
//  Created by Terence on 16/8/26.
//  Copyright © 2016年 Terence. All rights reserved.
//


/**
 多个storyboard连接。ios 9 以上，直接支持。
 */
#import "TDTabBarController.h"

@interface TDTabBarController ()

@end

@implementation TDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.selectedIndex = 3;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
