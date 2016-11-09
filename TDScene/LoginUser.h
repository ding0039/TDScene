//
//  LoginUser.h
//  TDScene
//
//  Created by Terence on 2016/10/21.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginUser : NSObject


@property (nonatomic,weak) NSString *name;

//@property (nonatomic,weak)

+(instancetype)shareUser;

@end
