//
//  ViewController.m
//  UniversalJumpDemo
//
//  Created by macaaaaa on 2019/4/24.
//  Copyright © 2019年 TaoSheng. All rights reserved.
//

#import "ViewController.h"
#import "BankListModel.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self createData];
    [self setupUI];
}

- (void)createData {
    
    BankListModel *model = [[BankListModel alloc] init];
    model.bankName = @"中国工商银行";
    model.bankNum = @"6217392043296540770";
    
    NSDictionary *property1 = @{};
    NSDictionary *dic1 = @{kPushVCName:@"BankListViewController", kPushVCProperty:property1};
    NSDictionary *contentDic1 = @{@"title":@"银行卡列表", @"content":dic1};
    
    NSDictionary *property2 = @{@"isCheckDetail":@"YES", @"model":model};
    NSDictionary *dic2 = @{kPushVCName:@"BankDetailViewController", kPushVCProperty:property2};
    NSDictionary *contentDic2 = @{@"title":@"银行卡详情", @"content":dic2};
    
    NSDictionary *property3 = @{@"isCheckDetail":@"NO"};
    NSDictionary *dic3 = @{kPushVCName:@"BankDetailViewController", kPushVCProperty:property3};
    NSDictionary *contentDic3 = @{@"title":@"添加银行卡", @"content":dic3};
    
    NSDictionary *property4 = @{@"infoDic":@{@"name":@"张三", @"sex":@"男", @"age":@"25"}};
    NSDictionary *dic4 = @{kPushVCName:@"PersonInfoViewController", kPushVCProperty:property4};
    NSDictionary *contentDic4 = @{@"title":@"个人信息", @"content":dic4};
    
    NSDictionary *property5 = @{@"carArr":@[@"宝马", @"辉腾", @"奇瑞", @"劳斯莱斯"], @"carArrCount":@"4"};
    NSDictionary *dic5 = @{kPushVCName:@"CarInfoViewController", kPushVCProperty:property5};
    NSDictionary *contentDic5 = @{@"title":@"车辆列表", @"content":dic5};
    
    self.dataSource = [[NSMutableArray alloc] initWithObjects:contentDic1, contentDic2, contentDic3, contentDic4, contentDic5, nil];
}

- (void)setupUI {
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStylePlain];
    
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    
    self.tableView.tableFooterView = [UIView new];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableView Delegate && DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.dataSource objectAtIndex:indexPath.row] objectForKey:@"title"];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *dic = [[self.dataSource objectAtIndex:indexPath.row] objectForKey:@"content"];
    
    UIViewController *vc = [[WBViewControllerManager sharedManager] getSpecificViewControllerFromInfo:dic];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
