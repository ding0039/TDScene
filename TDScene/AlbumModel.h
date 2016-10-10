//
//  AlbumModel.h
//  TDScene
//
//  Created by Terence on 2016/9/29.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlbumModel : NSObject

/**
 相册名
 */
@property (nonatomic,assign) NSString *albumName;

/**
 相册封面图 指定：100*100
 */
@property (nonatomic,strong) UIImage *cover;

/**
 相册相片数量
 */
@property (nonatomic,assign) NSUInteger photoNumber;

/**
 相册容量总和
 */
@property (nonatomic,assign) NSUInteger volume;
/**
 相册创建日期
 */
@property (nonatomic,strong) NSDate *createDate;



@end
