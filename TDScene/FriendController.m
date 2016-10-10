//
//  FriendController.m
//  ImitatedScene
//
//  Created by Terence on 16/8/25.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "FriendController.h"

@implementation FriendController

-(void)viewDidLoad{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.tableView.style

    
}


- (IBAction)notify:(id)sender {
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else{
        return 1;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"我";
    }else{
        return @"好友 (0)";
    }
}
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//
//}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifer = @"FriendCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifer];
    }
    if (indexPath.section == 0) {
        cell.imageView.image = [UIImage imageNamed:@""];
        cell.textLabel.text = @"本人昵称";
        cell.textLabel.textColor = [UIColor blackColor];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.textLabel.text = @"添加好友";
        cell.textLabel.textColor = [UIColor blueColor];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }



    return cell;
}




@end
