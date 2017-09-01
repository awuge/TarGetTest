//
//  ViewController.m
//  TestTarget
//
//  Created by wu on 2017/8/30.
//  Copyright © 2017年 company. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //方法一
    
//    [self loadCodeWithBundleIdentifier];
    
    //方法二
    [self defineComplete];
}
//方法一
-(void) loadCodeWithBundleIdentifier{
    
    NSString * BundleIdentifier = [[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleIdentifier"];
    if ([BundleIdentifier isEqualToString:@"progressIdentifier.com.TestTarget"])
    {
        
        //处理 TestTarget 代码
        
        NSLog(@"TestTarget");
        
    }
    
    
    else {
        
        //处理 TestTarget2 代码
        
        NSLog(@"TestTarget2");
        
    }
}

// 方式2--- 定义一个编译器宏,来进行区分
-(void) defineComplete{
    
 #ifdef TESTTARGET2
  //target2的处理代码
    NSLog(@"-DTESTTARGET2");
 #else
    
    NSLog(@"-DTESTTARGET");
    
# endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
