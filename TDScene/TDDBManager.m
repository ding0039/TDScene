//
//  TDDBManager.m
//  TDScene
//
//  Created by Terence on 2016/10/28.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDDBManager.h"

@implementation TDDBManager

static TDDBManager *manager;
+(instancetype)manager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[TDDBManager alloc]init];

        [manager createDB];
    });
    return manager;
}



/**
 创建数据库

 @return 创建是否成功
 */
-(BOOL)createDB{
    // 获得Documents目录路径
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];

    // 文件路径
    NSString *filePath = [documentsPath stringByAppendingPathComponent:@"tdScene.sqlite"];


    if (![[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        // 实例化FMDataBase对象
        _db = [FMDatabase databaseWithPath:filePath];

        [_db open];

        // 初始化数据表
        NSString *tableAlbum = @"CREATE TABLE 'album' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,'sn' INTEGER,'album_name' VARCHAR(255),'album_volum' DECIMAL(255,2),'album_cover' VARCHAR(255)) ";


        NSString *tablePhoto = @"CREATE TABLE 'person' ('id' INTEGER PRIMARY KEY AUTOINCREMENT  NOT NULL ,'photo_id' VARCHAR(255),'photo_name' VARCHAR(255),'person_age' VARCHAR(255),'person_number'VARCHAR(255)) ";


        if ([_db executeUpdate:tableAlbum]) {
            NSLog(@"创建album表成功!");
        }
        if ([_db executeUpdate:tablePhoto]) {
            NSLog(@"创建photo表成功!");
        }

        
        [_db close];

    }
    return YES;
}





@end
