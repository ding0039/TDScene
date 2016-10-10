//
//  Header.h
//  ToolObject
//
//  Created by Terence on 16/9/21.
//  Copyright © 2016年 Terence. All rights reserved.
//


#ifndef Header_h
#define Header_h
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// App Frame
#define App_Frame                   [[UIScreen mainScreen] applicationFrame]

// App Frame Height&Width
#define App_Frame_Height            [[UIScreen mainScreen] applicationFrame].size.height
#define App_Frame_Width             [[UIScreen mainScreen] applicationFrame].size.width

// MainScreen Height&Width
#define Main_Screen_Height          [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width           [[UIScreen mainScreen] bounds].size.width

// UIView 坐标(x,y)和宽高(width,height)
#define X(view)                     (view).frame.origin.x
#define Y(view)                     (view).frame.origin.y

#define V_Width(view)               (view).frame.size.width
#define V_Height(view)              (view).frame.size.height

#define V_MinX(view)                  CGRectGetMinX((view).frame)
#define V_MinY(view)                  CGRectGetMinY((view).frame)

#define V_MidX(view)                  CGRectGetMidX((view).frame)
#define V_MidY(view)                  CGRectGetMidY((view).frame)

#define V_MaxX(view)                  CGRectGetMaxX((view).frame)
#define V_MaxY(view)                  CGRectGetMaxY((view).frame)

// 系统控件默认高度
#define StatusBarHeight             (20.f)
#define NavigationBarHeight         (44.f)
#define NavigationBarIcon           (20.f)
#define TabBarHeight                (49.f)
#define TabBarIcon                  (30.f)
#define CellDefaultHeight           (44.f)
#define EnglishKeyboardHeight       (216.f)
#define ChineseKeyboardHeight       (252.f)


// 重写NSLog，DEBUG模式下打印日志和当前行数
#if DEBUG
#   define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#   define NSLog(FORMAT, ...) nil
#endif


// 检查系统版本 返回bool值
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)

#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


// 沙盒路径
#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]


// 读取本地图片
#define LOADIMAGE(file,type) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:file ofType:type]]


// rgb颜色转换（16进制->10进制）
#define ColorFromHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


// 获取RGB颜色
#define ColorFromRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define ColorFromRGB(r,g,b) RGBA(r,g,b,1.0f)

//清除背景色
#define CLEARCOLOR [UIColor clearColor]


/** 快速查询一段代码的执行时间 */
/** 用法
 TICK
 do your work here
 TOCK
 */
#define TICK NSDate *startTime = [NSDate date];
#define TOCK NSLog(@"Time:%f", -[startTime timeIntervalSinceNow]);


//程序的本地化,引用国际化的文件
#define MyLocal(x, ...) NSLocalizedString(x, nil)
//G－C－D
#define BACK(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define MAIN(block) dispatch_async(dispatch_get_main_queue(),block)
//NSUserDefaults 实例化
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

/*
 单例宏
 用法：
 */
#define SINGLETON_FOR_CLASS(name) \
static id _instance; \
+ (id)allocWithZone:(struct _NSZone *)zone \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [super allocWithZone:zone]; \
    }); \
    return _instance; \
} \
+ (instancetype)shared##name \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [[self alloc] init]; \
    });\
    return _instance; \
} \
+ (id)copyWithZone:(struct _NSZone *)zone \
{ \
    return _instance; \
}
#endif /* Header_h */
