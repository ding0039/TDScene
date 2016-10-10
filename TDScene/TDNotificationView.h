//
//  TDNotificationView.h
//  TDScene
//
//  Created by Terence on 2016/9/27.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDNotificationView : UIView <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
