//
//  AFImage.h
//  AFImage
//
//  Created by Afry on 16/3/19.
//  Copyright © 2016年 Afry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AFImage : NSObject

+(UIImage*)imageByBilateralFilterImage:(UIImage*)img distance:(CGFloat)distance;
@end
