
//
//  RootViewController.m
//  Lseeon_05
//
//  Created by 张天琦 on 15/9/4.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
#import "MyButton.h"
#import "MyTextfield.h"
@interface RootViewController ()<MyTextfieldDelegate>
@property  (nonatomic,strong)RootView * rootView;
@end

@implementation RootViewController
-(void)loadView{
    
    self.rootView = [[RootView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view =self.rootView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
//    添加myButton
    MyButton * button = [[MyButton alloc]initWithFrame:CGRectMake(100, 100, 100, 35)];
    button.backgroundColor = [UIColor cyanColor];
    
    
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    
    // Do any additional setup after loading the view.
    
    MyTextfield * textField = [[MyTextfield alloc]initWithFrame:CGRectMake(100, 100 , 100, 50)];
    textField.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:textField];
    textField.delegate = self;
     */
    
    UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tang"]];
    imageView.frame = CGRectMake(60, 250, 225, 150);
    [self.view addSubview:imageView];
//    添加轻拍手势

    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [imageView addGestureRecognizer:tapGR];
    tapGR.numberOfTapsRequired = 2; //双击
//    tapGR.numberOfTouchesRequired = 2; //双手指
    imageView.userInteractionEnabled = YES;
    
    
//    添加旋转手势
    UIRotationGestureRecognizer * rotationGR = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(RotationGRAction:)];
    [imageView addGestureRecognizer:rotationGR];
    
    UIPinchGestureRecognizer *pinGR = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinAction:)];
    [imageView addGestureRecognizer:pinGR];
    
    
    
}
-(void)pinAction:(UIPinchGestureRecognizer *)pin{
    
    UIImageView * imageView = (UIImageView *)pin.view;
    imageView.transform = CGAffineTransformScale(imageView.transform, pin.scale, pin.scale);
    pin.scale = 1;
    
}
-(void)tapAction:(UITapGestureRecognizer *)sender{
    
    NSLog(@"wahah");
    
}

-(void)RotationGRAction:(UIRotationGestureRecognizer *)roll{
    
    
//    通过手势,获取到作用的视图
    UIImageView * imageView = (UIImageView *)roll.view;
//    永远从原点开始转,每次重新转
//    imageView.transform = CGAffineTransformMakeRotation(roll.rotation);
 

//    每次从上一次的位置转
    imageView.transform = CGAffineTransformRotate(imageView.transform, roll.rotation);
    roll.rotation = 0; //控制不加速    
}

-(void)buttonAction:(MyButton *)sender{
    
    NSLog(@"-----我真是醉了-----");
    
}
     
    
-(void)textfieldBegin:(MyTextfield *)textfield{
    
    NSLog(@"--___--");
    
    
}
-(void)textfieldIng:(MyTextfield *)textfield{
    
    NSLog(@" -__- ");
    
    
}
-(void)textfieldEnd:(MyTextfield *)textfield{
    
    NSLog(@"  -_-");
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
