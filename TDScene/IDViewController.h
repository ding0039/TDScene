//
//  IDViewController.h
//  TDScene
//
//  Created by Terence on 2016/10/8.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IDViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myID;
@property (weak, nonatomic) IBOutlet UITextField *friendID;

@end
