//
//  ViewController.m
//  JRCustomKVODemo
//
//  Created by sky on 16/9/7.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+jr_KVO.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController
- (IBAction)btnOnClick:(UIButton *)sender {
    // 按钮点一下就自动生成一个随机色
    self.colorView.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // textLabel要监听colorView的backgroundColor属性
    [self.colorView jr_addObserver:self.textLabel key:@"backgroundColor" callback:^(UILabel *observer, NSString *key, id oldValue, id newValue) {
        // 回到主线程刷新UI界面
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"colorView的颜色改变了!");
            // label上打印此时colorView上的RGBA值
            observer.text = [NSString stringWithFormat:@"currentBGColor = %@", newValue];
        });
    }];
    
}

- (void)dealloc
{
    [self.colorView jr_removeObserver:self.textLabel key:@"backgroundColor"];
        
}


@end
