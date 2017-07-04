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

float cellOfRow = 4;   //view一行的cell数量
float cellWidth;    //cell的宽度
float const cellSpace = 10;    //cell之间的间隙
NSString *cellID = @"AlbumCell";
-(void)viewDidLoad{
    [super viewDidLoad];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.navigationController.delegate = self;

    [self.collectionView registerNib:[UINib nibWithNibName:@"TDAlbumCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:cellID];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    self.collectionView.collectionViewLayout = layout;
    
    cellWidth = (Main_Screen_Width - (cellOfRow + 1) * cellSpace) / cellOfRow;



    //添加手势缩放cell大小
    UIPinchGestureRecognizer *gesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchCellSize:)];
    [self.collectionView addGestureRecognizer:gesture];

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
    
    TDNotificationController *recommandVC = [[TDNotificationController alloc]init];     //半透明的那个viewcontroller

    [self.tabBarController presentViewController:recommandVC animated:NO completion:nil];
}

- (IBAction)menu:(id)sender {


}


-(void)pinchCellSize:(UIPinchGestureRecognizer *)gesture{
    if (gesture.state == UIGestureRecognizerStateEnded) {
        if (gesture.scale < 1 && cellOfRow < 7) {    //缩小
            cellOfRow ++;
        }else if (gesture.scale > 1 && cellOfRow > 2){
            cellOfRow --;
        }

        cellWidth = (Main_Screen_Width - (cellOfRow + 1) * cellSpace) / cellOfRow;

        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        flowLayout.itemSize = CGSizeMake(cellWidth, cellWidth* 1.2);

        [self.collectionView setCollectionViewLayout:flowLayout animated:YES completion:^(BOOL finished) {

        }];
    }
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 15;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    TDAlbumCollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AlbumCell" forIndexPath:indexPath];
//    for (UIView *subview in cell.contentView.subviews) {
//
//    }

    if (!cell) {
        
    }
    cell.name.text = [NSString stringWithFormat:@"%u",arc4random()];
    return cell;
}

//定义每个UICollectionCellView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(cellWidth,cellWidth * 1.2 );
}
//定义每个UICollectionView的间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 0, 0, 0);
}



@end
