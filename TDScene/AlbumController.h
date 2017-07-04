//
//  AlbumController.h
//  ImitatedScene
//
//  Created by Terence on 16/8/25.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDAlbumCollectionViewCell.h"

@interface AlbumController : UIViewController <UICollectionViewDelegate,UICollectionViewDataSource,UINavigationControllerDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
