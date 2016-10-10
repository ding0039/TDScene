//
//  TDNotificationController.m
//  ImitatedScene
//
//  Created by Terence on 2016/9/26.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDNotificationController.h"


@interface TDNotificationController ()

@end

@implementation TDNotificationController

-(instancetype)init{
    if (self = [super init]) {
        if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
            self.modalPresentationStyle=
            UIModalPresentationOverCurrentContext|UIModalPresentationFullScreen;//如果这个viewcontroller有tabbar或者navigationbar，不用fullscreen无法全屏
        }else{
            //无8.0以下设备，未测试
            self.modalPresentationStyle=
            UIModalPresentationCurrentContext|UIModalPresentationFullScreen;
        }
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.7f]];
    // Do any additional setup after loading the view.
    UIControl *backController = [[UIControl alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [backController addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backController];


    tdnview = [[UIView alloc]initWithFrame:CGRectMake(0, 70, Main_Screen_Width, Main_Screen_Height-70)];
    tdnview.backgroundColor = [UIColor whiteColor];
    

//    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"TDNotificationView" owner:self options:nil];
//    tdnview = [nib objectAtIndex:0];
//    tdnview.frame = self.view.bounds;
    
    [self.view addSubview:tdnview];
}

-(void)back:(id)sender{

    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        tdnview.transform = CGAffineTransformMakeScale(0.01, 0.01);
        tdnview.center = CGPointMake(Main_Screen_Width - 80, 70);
    } completion:^(BOOL finished) {

        [self dismissViewControllerAnimated:YES completion:nil];
    }];

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
