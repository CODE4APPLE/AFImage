//
//  ViewController.m
//  AFImage
//
//  Created by Afry on 16/3/19.
//  Copyright © 2016年 Afry. All rights reserved.
//

#import "ViewController.h"
#import "AFImage.h"

#define kScreenSize [UIScreen mainScreen].bounds.size

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 默认图片
    UIImage *img = [UIImage imageNamed:@"a"];
    
    // 磨皮算法处理的图片
    UIImage *beautyImg = [AFImage imageByBilateralFilterImage:img distance:10.0];
    
    // 原图View
    UIImageView *imgv = [[UIImageView alloc]initWithImage:img];
    imgv.frame = CGRectMake(0, 0, kScreenSize.width, kScreenSize.height/2);
    [self.view addSubview:imgv];
    // 处理后图片的View
    UIImageView *beautyImgv = [[UIImageView alloc]initWithImage:beautyImg];
    beautyImgv.frame = CGRectMake(0, kScreenSize.height/2, kScreenSize.width, kScreenSize.height/2);
    [self.view addSubview:beautyImgv];
    
}

-(BOOL)prefersStatusBarHidden {
    return true;
}

@end
