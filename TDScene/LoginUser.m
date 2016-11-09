//
//  LoginUser.m
//  TDScene
//
//  Created by Terence on 2016/10/21.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "LoginUser.h"

@implementation LoginUser


static LoginUser *user;
+(instancetype)shareUser{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!user) {
            user = [[LoginUser alloc]init];
        }
    });

    return user;
}


@end
