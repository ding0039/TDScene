//
//  IDViewController.m
//  TDScene
//
//  Created by Terence on 2016/10/8.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "IDViewController.h"

@interface IDViewController ()

@end

@implementation IDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    long num = 312665829;
    _myID.text = [NSString stringWithFormat:@"%li %li %li",num / 1000000,(num % 1000000) / 1000,num % 1000];
    _friendID.delegate = self;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextFieldTextDidChangeNotification object:nil];

    _friendID.layoutMargins = UIEdgeInsetsMake(0, 10, 0, 0);
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString *strResult = [textField.text  stringByReplacingCharactersInRange:range withString:string];

    if (strResult.length > 11) {
        return NO;
    }
    return YES;
}

-(void)textChanged:(NSNotification *)notification{
    NSLog(@"changed");
    if ([_friendID.text hasSuffix:@" "]) {
        _friendID.text = [_friendID.text substringWithRange:NSMakeRange(0, _friendID.text.length - 1)];
    }else{
        if (_friendID.text.length == 3 || _friendID.text.length == 7) {
            _friendID.text = [_friendID.text stringByAppendingString:@" "];
        }
    }
}

@end
