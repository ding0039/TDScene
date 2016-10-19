//
//  TDNavigationControllerDelegate.m
//  TDScene
//
//  Created by Terence on 2016/10/11.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDNavigationControllerDelegate.h"

@implementation TDNavigationControllerDelegate

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{

    //指定特殊ViewController之间的跳转动画
    if (operation == UINavigationControllerOperationPush && [fromVC isKindOfClass:[MoreTableViewController class]] && [toVC isKindOfClass:[HelpTableViewController class]]) {
        return [[TDTransitionVerticalPush alloc]init];
    }else if(operation == UINavigationControllerOperationPop && [fromVC isKindOfClass:[HelpTableViewController class]] && [toVC isKindOfClass:[MoreTableViewController class]]){
        return [[TDTransitionVerticalPop alloc]init];
    }else{
        return nil;
    }
}

@end
