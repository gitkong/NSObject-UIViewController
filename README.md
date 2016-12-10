## 一、需求
- 很多朋友都需要在view或在其工具类中拿到当前显示的控制器去操作

## 二、解决办法
- 第一种：可以通过参数，将当前显示的控制器传入view或者工具类中（不建议）
- 第二种：就是我下面介绍的方法，给NSObject添加分类，此时不管是view还是工具类，都能获取当前显示的控制器

## 三、效果图（跳转效果都是在view中实现）

![view中跳转](http://upload-images.jianshu.io/upload_images/1085031-69bac7a667e8a99f.gif?imageMogr2/auto-orient/strip)


## 四、API及用法

- ######API : 获取当前控制器，不管你是modal过来还是push过来，内部已经处理了

```
/**
 *  @author Clarence
 *
 *  获取当前显示的控制器
 */
- (UIViewController *)fl_viewController;
```

- ######用法一： modal调用

```
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    FLSecondViewController *vc = [[FLSecondViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self.fl_viewController presentViewController:nav animated:YES completion:nil];
}
```

- ######用法二：push 调用

```
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.fl_viewController.navigationController pushViewController:[[FLThirdViewController alloc] init] animated:YES];
}
```

## 五、总结（看法）
> #####说实话，我很不赞成这种做法，因为这样不面向对象，跳转逻辑等操作应该是在控制器中处理的，因此才有代理的出现，view只负责拿到model数据进行显示，当然还是可以处理部分逻辑的，工具类另谈

- *在view中，不建议拿到当前的控制器去实现跳转等操作，建议按照苹果的做法，可以利用代理、block或者通知去实现。*

- *在NSObject工具类中，既然是工具，就是用来处理大部分的逻辑操作，跳转操作当然也可以封装在内部，减轻控制器的负担，类似MVVM的做法了，这里就不谈MVVM了，以后有机会我会另开一篇介绍。*

# 喜欢给我个star，欢迎大家去[简书](http://www.jianshu.com/users/fe5700cfb223/latest_articles)关注我，有问题就留言，喜欢就给个like😁~我会随时更新新文章
