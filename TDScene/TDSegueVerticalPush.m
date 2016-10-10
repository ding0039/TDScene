//
//  TDSegueVerticalPush.m
//  TDScene
//
//  Created by Terence on 2016/10/10.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDSegueVerticalPush.h"

@implementation TDSegueVerticalPush

-(void)perform{
    self.destinationViewController.view.frame = CGRectMake(0, Main_Screen_Height, Main_Screen_Width, Main_Screen_Height);
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionShowHideTransitionViews animations:^{
        self.destinationViewController.view.frame = CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height);
    } completion:^(BOOL finished) {
        [self.sourceViewController.navigationController pushViewController:self.destinationViewController animated:YES];
    }];
}
@end
