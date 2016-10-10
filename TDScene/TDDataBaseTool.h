//
//  TDDataBaseTool.h
//  TDScene
//
//  Created by Terence on 2016/10/9.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"

#define DB_PATH [PATH_OF_DOCUMENT stringByAppendingPathComponent:@"TDScene.db"]
#define SQL_SEL_ALL(tableName) [NSString stringWithFormate:@"SELECT * FROM %@",tableName];
#define SQL_SEL_


@interface TDDataBaseTool : NSObject

@property (nonatomic,retain) NSString *dbName;


+(instancetype)shareInstance;

-(BOOL)createDB;
-(BOOL)openDB;
-(BOOL)closeDB;
-(BOOL)updateDB;
-(BOOL)deleteDB;
-(BOOL)queryDB;

@end
