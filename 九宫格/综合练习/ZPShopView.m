//
//  ZPShopView.m
//  综合练习
//
//  Created by apple on 16/4/29.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 使用代码方式构造代码量会比较多，而使用xib方式构造则会省去大部分的代码，使代码更加简洁，更快的构造出自定义控件，但缺点是不便于多人之间的协作；
 用xib的方式构造可以省去用代码的方式构造中需要调用的initWithFrame和layoutSubviews方法，而子控件的创建和尺寸的设置在xib中都已经做好了。
 */
#import "ZPShopView.h"
#import "Shop.h"

@interface ZPShopView ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ZPShopView

#pragma mark ————— 构造自定义控件的方法 —————
+(instancetype)shopViewWithShop:(Shop *)shop
{
    ZPShopView *shopView = [self shopView];
    shopView.shop = shop;
    
    return shopView;
}

#pragma mark ————— 加载xib文件 —————
+(instancetype)shopView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

#pragma mark ————— 设置数据 —————
-(void)setShop:(Shop *)shop
{
    _shop = shop;
    
    self.iconView.image = [UIImage imageNamed:shop.icon];
    self.label.text = shop.name;
}

@end
