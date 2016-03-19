# AFImage
一句话实现美颜效果(基于GPUImage)

# 使用方法
~~~
#import "AF"
~~~

~~~
UIImage *beautyImg = [AFImage imageByBilateralFilterImage:img distance:10.0];
// img:      传入的图片(UIImage*)
// distance: 要进行运算的系数，值越大精度越低
~~~

![](/Img/a.png)  
![](/Img/b.png)  
