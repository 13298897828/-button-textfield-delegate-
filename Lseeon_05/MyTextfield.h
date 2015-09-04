//
//  MyTextfield.h
//  Lseeon_05
//
//  Created by 张天琦 on 15/9/4.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <UIKit/UIKit.h>
//告诉编译器,后面的是一个协议
@protocol MyTextfieldDelegate;
@interface MyTextfield : UIView
//2.声明delegate属性
@property (nonatomic,assign)id <MyTextfieldDelegate>delegate;
@end
//1.声明协议
@protocol MyTextfieldDelegate <NSObject>
-(void)textfieldBegin:(MyTextfield *)textfield ;
-(void)textfieldIng:(MyTextfield *)textfield ;
-(void)textfieldEnd:(MyTextfield *)textfield ;
@end