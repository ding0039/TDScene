//
//  TDAlbumCollectionViewCell.m
//  TDScene
//
//  Created by Terence on 2016/9/28.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDAlbumCollectionViewCell.h"

@implementation TDAlbumCollectionViewCell

-(void)awakeFromNib{
    [super awakeFromNib];

    UIImageView *bgv = [[UIImageView alloc]init];
    bgv.contentMode = UIViewContentModeScaleToFill;
    bgv.image = [UIImage imageNamed:@"album_cell_shadow"];
    self.backgroundView = bgv;

    self.cover.contentMode = UIViewContentModeScaleToFill;

    //imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate 方法使得setTintColor有效
    self.cover.image = [[UIImage imageNamed:@"menu_copy"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.cover.tintColor = [UIColor whiteColor];

    self.name.adjustsFontSizeToFitWidth = YES;
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

        self.name.adjustsFontSizeToFitWidth = YES;

    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];


}


@end
