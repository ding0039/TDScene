//
//  TDDataBaseTool.m
//  TDScene
//
//  Created by Terence on 2016/10/9.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDDataBaseTool.h"

@implementation TDDataBaseTool

static TDDataBaseTool *dbTool;
+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dbTool = [[TDDataBaseTool alloc] init];
    });
    return dbTool;
}


-(BOOL)createDB{
    FMDatabase *db = [FMDatabase databaseWithPath:DB_PATH];
    if (!db) {
        return NO;
    }
    return YES;
}
-(BOOL)openDB{
    
    return YES;
}
-(BOOL)closeDB{

    return YES;
}
-(BOOL)updateDB{

    return YES;
}
-(BOOL)deleteDB{

    return YES;
}
-(BOOL)queryDB{

    return YES;
}

@end
