//
//  BankDetailViewController.h
//  UniversalJumpDemo
//
//  Created by macaaaaa on 2019/4/24.
//  Copyright © 2019年 TaoSheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BankListModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BankDetailViewController : UIViewController

@property (nonatomic, strong) BankListModel *model;

@property (nonatomic, assign) BOOL isCheckDetail;

@end

NS_ASSUME_NONNULL_END
