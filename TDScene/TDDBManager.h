//
//  TDDBManager.h
//  TDScene
//
//  Created by Terence on 2016/10/28.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

@interface TDDBManager : NSObject
{
    FMDatabase *_db;
}

+(instancetype)manager;




@end
