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
@property (nonatomic,strong) NSString *albumName;

/**
 相册封面图 指定：100*100
 */
@property (nonatomic,strong) UIImage *cover;
/**
 相册排列顺序 序号
 */
@property (nonatomic) NSUInteger sn;
/**
 相册相片数量
 */
@property (nonatomic) NSUInteger photoNumber;

/**
 相册原图容量总和
 */
@property (nonatomic) NSUInteger volume;
/**
 相册创建日期
 */
@property (nonatomic) NSDate *createDate;



@end
