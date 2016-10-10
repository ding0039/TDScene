//
//  AlbumController.m
//  ImitatedScene
//
//  Created by Terence on 16/8/25.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "AlbumController.h"
#import "TDNotificationController.h"

@implementation AlbumController
-(void)viewDidLoad{
    [super viewDidLoad];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.navigationController.delegate = self;
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
//    layout.minimumLineSpacing = 5;
//    layout.minimumInteritemSpacing = 5;
//    self.collectionView.collectionViewLayout = layout;

}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

    NSArray *leftItems = self.navigationItem.leftBarButtonItems;
    UIBarButtonItem *searchBarItem =  leftItems[1];
    if (/* DISABLES CODE */ (3)>2) {
        searchBarItem.enabled = NO;
        searchBarItem.image = nil;
    }else{
        searchBarItem.image = [UIImage imageNamed:@"nav_search_album"];
        searchBarItem.enabled = YES;
    }
}
- (IBAction)addAlbum:(id)sender {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"新相册" message:@"输入相册名称" preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy/MM/dd"];
        NSString *currentDateStr = [dateFormatter stringFromDate:[NSDate date]];
        textField.text = currentDateStr;
    }];

    [alertVC addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [alertVC addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

    }]];

    [self presentViewController:alertVC animated:YES completion:nil];
}

- (IBAction)notify:(id)sender {
    UIViewController *rootViewController = self.navigationController.view.window.rootViewController;
    TDNotificationController *recommandVC = [[TDNotificationController alloc]init];     //半透明的那个viewcontroller

    [rootViewController presentViewController:recommandVC animated:NO completion:nil];
}

- (IBAction)menu:(id)sender {

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    TDAlbumCollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AlbumCell" forIndexPath:indexPath];
    if (!cell) {
        
    }

    return cell;
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{

    float cellWidth = (V_Width(self.collectionView) -  60)/ 3;
    return CGSizeMake(cellWidth,cellWidth + 40);
}
//定义每个UICollectionView的间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 0, 0, 0);
}

-(UICollectionViewTransitionLayout *)collectionView:(UICollectionView *)collectionView transitionLayoutForOldLayout:(UICollectionViewLayout *)fromLayout newLayout:(UICollectionViewLayout *)toLayout{
    UICollectionViewTransitionLayout *layout = [[UICollectionViewTransitionLayout alloc]initWithCurrentLayout:fromLayout nextLayout:toLayout];

    return layout;
}
@end
