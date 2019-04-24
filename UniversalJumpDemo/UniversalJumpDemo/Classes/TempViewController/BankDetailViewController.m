//
//  BankDetailViewController.m
//  UniversalJumpDemo
//
//  Created by macaaaaa on 2019/4/24.
//  Copyright © 2019年 TaoSheng. All rights reserved.
//

#import "BankDetailViewController.h"

@interface BankDetailViewController ()

@end

@implementation BankDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    if (self.isCheckDetail) {
        
        self.navigationItem.title = @"银行卡详情";
        NSLog(@"银行卡名字：%@----银行卡号：%@", self.model.bankName, self.model.bankNum);
        
    }else {
     
        self.navigationItem.title = @"添加银行卡";
        NSLog(@"添加银行卡");
    }
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
