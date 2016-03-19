//
//  AFImage.m
//  AFImage
//
//  Created by Afry on 16/3/19.
//  Copyright © 2016年 Afry. All rights reserved.
//

#import "AFImage.h"
#import "GPUImage.h"

@implementation AFImage

+(UIImage*)imageByBilateralFilterImage:(UIImage*)img distance:(CGFloat)distance{
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:img];


    GPUImageBilateralFilter *filter = [[GPUImageBilateralFilter alloc] init];
    
    
    
    [stillImageSource addTarget:filter];
    filter.distanceNormalizationFactor = distance;
    
    
    
    [filter useNextFrameForImageCapture];
    [stillImageSource processImage];

    return [filter imageFromCurrentFramebuffer];

}
@end
