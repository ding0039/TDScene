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

    if (operation == UINavigationControllerOperationPush && [toVC isKindOfClass:[HelpTableViewController class]]) {
        return [[TDTransitionVerticalPush alloc]init];
    }else{
        return nil;
    }
}

@end
