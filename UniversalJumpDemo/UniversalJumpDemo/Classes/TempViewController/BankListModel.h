//
//  BankListModel.h
//  UniversalJumpDemo
//
//  Created by macaaaaa on 2019/4/24.
//  Copyright © 2019年 TaoSheng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BankListModel : NSObject

/** 银行卡名字 */
@property (nonatomic, copy) NSString *bankName;

/** 银行卡号 */
@property (nonatomic, copy) NSString *bankNum;

@end

NS_ASSUME_NONNULL_END
