//
//  MyTextfield.m
//  Lseeon_05
//
//  Created by 张天琦 on 15/9/4.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "MyTextfield.h"

@implementation MyTextfield

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
//    判断delegate是否存在  是否可以相应 协议方法
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(textfieldBegin:)]) {
        [self.delegate textfieldBegin:self];
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    if (self.delegate != nil &&[self.delegate respondsToSelector:@selector(textfieldIng:)]) {
        [self.delegate textfieldIng:self];
    }
    
    
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    if (self.delegate != nil &&[self.delegate respondsToSelector:@selector(textfieldEnd:)]) {
        [self.delegate textfieldEnd:self];
    }
    
    
}
@end
