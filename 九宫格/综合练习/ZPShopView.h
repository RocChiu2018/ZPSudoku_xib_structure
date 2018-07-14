//
//  ZPShopView.h
//  综合练习
//
//  Created by apple on 16/4/29.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 此类为自定义控件类；
 本Demo中用xib的方式构造此自定义控件类，另有Demo介绍如何用代码的方式构造此自定义控件类；
 */
#import <UIKit/UIKit.h>

@class Shop;

@interface ZPShopView : UIView

@property (nonatomic, strong) Shop *shop;

//构造方法
+(instancetype)shopViewWithShop:(Shop *)shop;

@end
