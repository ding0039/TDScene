//
//  PhotoController.m
//  ImitatedScene
//
//  Created by Terence on 16/8/25.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "PhotoController.h"

@implementation PhotoController

-(void)viewDidLoad{
    [super viewDidLoad];
    cellQuantity = 4;
    cellSpace_TB = 3;
    cellSpace_LR = 4;
    
}

/**
 整理

 @param sender
 */
- (IBAction)tidy:(id)sender {

}

- (IBAction)notify:(id)sender {
    UIViewController *rootViewController = self.navigationController.view.window.rootViewController;
    TDNotificationController *recommandVC = [[TDNotificationController alloc]init];     //半透明的那个viercontroller

    [rootViewController presentViewController:recommandVC animated:NO completion:nil];
}

- (IBAction)menu:(id)sender {
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{

    float cellWidth = (V_Width(self.collectionView) -  40)/ 5;
    return CGSizeMake(cellWidth,cellWidth + 40);
}
//定义每个UICollectionView的间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 0, 0, 0);
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell" forIndexPath:indexPath];
    if (!cell) {

    }

    return cell;
}

@end
