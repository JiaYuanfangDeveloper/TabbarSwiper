//
//  RootTabBarController.m
//  teaching_helper
//
//  Created by hang on 16/8/26.
//  Copyright © 2016年 tinso. All rights reserved.
//

#import "RootTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"


@interface RootTabbarController ()

@end

@implementation RootTabbarController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self addViewControll:[FirstViewController class] tabName:@"移动授课" image:@"teaching_1" selectImage:@"teaching_2"];
    [self addViewControll:[SecondViewController class] tabName:@"班级档案" image:@"class_1" selectImage:@"class_2"];
    [self addViewControll:[ThirdViewController class] tabName:@"智能作业" image:@"homework_1" selectImage:@"homework_2"];
    [self addViewControll:[FourthViewController class] tabName:@"我" image:@"own_1" selectImage:@"own_2"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)addViewControll:(Class)className tabName:(NSString *)nameString image:(NSString *)nomalImage selectImage:(NSString *)selectImage {
    
    UIViewController *VC = [[className alloc]init];
    UINavigationController *NV = [[UINavigationController alloc] initWithRootViewController:VC];
    
    NV.navigationBar.tintColor = [UIColor colorWithRed:25 / 255.0 green:26 / 255.0 blue:27 / 255.0 alpha:1];
    
    NV.tabBarItem = [[UITabBarItem alloc]initWithTitle:nameString image:[UIImage imageNamed:nomalImage] selectedImage:[UIImage imageNamed:selectImage]];
    
    self.tabBar.tintColor = [UIColor colorWithRed:21 / 255.0 green:153 / 255.0 blue:73 / 255.0 alpha:1];
    
    [self addChildViewController:NV];
}

@end





