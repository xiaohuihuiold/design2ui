# design2ui
[ENGLISH](README.md)

UI适配插件,使界面和字体在ppi不同的手机上显示效果和设计图一样

* 根据设计图像素密度进行缩放
* 根据设计图dp与对应的px进行缩放
* 根据设计图宽高和像素进行缩放

## 使用方法:

* 导入design2ui.dart
   ```dart
   import 'package:design2ui/design2ui.dart';
   ```

* 初始化
   在home页面初始化design2ui
   ```dart
   D2U.init(context);
   ```

* 加载设计图设置
   * 知道设计图的像素比和宽度,假设设计图宽度是1080px/540dp
     ```dart
     D2U.load(D2UDesign(2.0,540.0));
     ```
   * 知道设计图ppi和宽度,假设设计图ppi是320,宽度540dp,也可以是px
     ```dart
     D2U.load(D2UDesign.fromDensity(320,widthDp:540.0));
     D2U.load(D2UDesign.fromDensity(320,widthPx:1080));
     ```
   * 知道设计图dp和px的情况,假设设计图某个图标宽度540dp/1080px
     ```dart
     D2U.load(D2UDesign.fromCompare(540.0,1080));
     ```
   * 只知道设计图宽度dp或者px(填写的是px时,使用填写px和dp效果是一样的)
     ```dart
     D2U.load(D2UDesign.fromSize(widthDp:540.0));
     D2U.load(D2UDesign.fromSize(widthPx:1080));
     ```

* 使用
   * 设置宽高时直接使用D2U.d2u(dp:dp,px:px);
     ```dart
     Container(
       width: D2U.d2u(dp: 100.0),
       height: D2U.d2u(dp: 100.0),
     )
     ```
   * 字体设置可以选择是否跟随系统缩放
     ```dart
     //不缩放
     TextStyle(
       fontSize: D2U.d2ut(24.0),
     )

     //启用缩放
     TextStyle(
       fontSize: D2U.d2ut(24.0,scale: true),
     )
     ```

## 使用效果 [`example`](example/lib/main.dart):
![](images/screen01.png)![](images/screen02.png)

![](images/screen03.png)![](images/screen04.png)