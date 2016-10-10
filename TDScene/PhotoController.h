//
//  PhotoController.h
//  ImitatedScene
//
//  Created by Terence on 16/8/25.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDNotificationController.h"

@interface PhotoController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSUInteger cellQuantity;    //每行的cell个数
    NSUInteger cellSpace_TB;   //cell 上下间的间距
    NSUInteger cellSpace_LR;   //cell 左右间的间距
}


@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
