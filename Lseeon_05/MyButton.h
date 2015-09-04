//
//  MyButton.h
//  Lseeon_05
//
//  Created by 张天琦 on 15/9/4.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyButton : UIView
//声明添加事件的方法
-(void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
@end
