# HHFramework
我的架构

## 前言
这是我总结的一套OC的框架，平时的开发工作都是基于它开发的，本框架主要包含常用的一些东西，包括三方框架，全局基本宏定义，一些工具类，基类和一些扩展。
三方的框架是用cocoaPods管理。

## 结构
#### AppDelegate
* AppDelegate  程序入口
#### MainClass
* Base 一些基类，包括BaseNavigationController, BaseTabBarController, BaseModel等，**新增了tabbar中间按钮**
* Home 主界面
* Mine 我的界面
#### Public
* Helper 一些全局使用的工具，UserHelper 存放登录信息和一些数据量小的信息， ToolsHelper 更改字体颜色等工具
* Net。  自己封装的网络
* GlobalDefines 全局的宏定义，GlobalDefines.h 存放一些常用的宏，宽、高、适配比、打印信息等
#### Utils
* MineWidget 自我封装的一些控件
* Category 分类，UIColor分类、NSLog等
#### ThirdPart
* HHMJRefresh 自我封装的刷新
* CNPPopupController 自我更改过一些的弹窗
* LCProgressHUD 自我更改后的HUD
#### Resource
* Image 图片资源
#### AppFiles
* PrefixHeader.pch PCH文件，用来存放全局性的文件

#### Pods
* AFNetworking 网络
* FDFullscreenPopGesture 全局返回手势和导航栏的隐藏显示控制
* IQKeyboardManager 键盘，控制界面的自动上移下落，防止遮挡
* Masonry 自动布局
* MBProgressHUD HUD提示
* MJExtension 数据转model
* MJRefresh 刷新控件
* SDWebImage 加载网络图片资源库

