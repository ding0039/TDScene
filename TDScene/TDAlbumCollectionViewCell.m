//
//  TDAlbumCollectionViewCell.m
//  TDScene
//
//  Created by Terence on 2016/9/28.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDAlbumCollectionViewCell.h"

@implementation TDAlbumCollectionViewCell

-(instancetype)init{
    if (self = [super init]) {
        UIImageView *bgv = [[UIImageView alloc]initWithFrame:self.bounds];
        bgv.image = [UIImage imageNamed:@"album_cell_shadow"];
        self.backgroundView = bgv;
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        UIImageView *bgv = [[UIImageView alloc]init];

        bgv.contentMode = UIViewContentModeScaleToFill;
        bgv.image = [UIImage imageNamed:@"album_cell_shadow"];
        self.backgroundView = bgv;

        self.cover.contentMode = UIViewContentModeScaleToFill;
       
        //imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate 方法使得setTintColor有效
        self.cover.image = [[UIImage imageNamed:@"menu_copy"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        self.cover.tintColor = [UIColor whiteColor];

    }
//    NSLog(@"coder:%f",self.bounds.size.width);
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];

}


@end
