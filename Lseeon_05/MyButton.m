//
//  MyButton.m
//  Lseeon_05
//
//  Created by 张天琦 on 15/9/4.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "MyButton.h"
@interface MyButton()
{
    
    id _target;
    SEL _action;
    UIControlEvents _controlEvents;
    
}
@end
@implementation MyButton

-(void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    _target = target;
    _action = action;
    _controlEvents = controlEvents;
    
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    判断触发方式是否是TouchUpInside
    if (_controlEvents == UIControlEventTouchUpInside) {
//        让_target 去执行_action 消息,并且把self 作为参数传递
        [_target performSelector:_action withObject:self];
    }
    
}
@end
