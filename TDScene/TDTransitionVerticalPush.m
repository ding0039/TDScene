//
//  TDMoveTransition.m
//  TDScene
//
//  Created by Terence on 2016/10/9.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDTransitionVerticalPush.h"

@implementation TDTransitionVerticalPush


- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return 0.5;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    // 起始VC
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    // 目的VC
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // 转场视图容器
    UIView *containerView = [transitionContext containerView];

    //动画
    toVC.view.frame = CGRectMake(0, Main_Screen_Height, toVC.view.frame.size.width, toVC.view.frame.size.height);
    [containerView addSubview:toVC.view];

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        toVC.view.frame = CGRectMake(0, 0, toVC.view.frame.size.width, toVC.view.frame.size.height);
    } completion:^(BOOL finished) {

    }];

}


/// A conforming object implements this method if the transition it creates can
/// be interrupted. For example, it could return an instance of a
/// UIViewPropertyAnimator. It is expected that this method will return the same
/// instance for the life of a transition.
- (id <UIViewImplicitlyAnimating>) interruptibleAnimatorForTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    id ret;
    return ret;
}

// This is a convenience and if implemented will be invoked by the system when the transition context's completeTransition: method is invoked.
- (void)animationEnded:(BOOL) transitionCompleted{

}

@end
