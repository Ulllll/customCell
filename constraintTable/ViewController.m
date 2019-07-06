//
//  ViewController.m
//  constraintTable
//
//  Created by Анастасия Рябова on 03/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"



@interface ViewController () <UITableViewDelegate, UITableViewDataSource, NSLayoutManagerDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) customCell *cell;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewCellStyleDefault];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.backgroundColor = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1];

    [self.tableView registerClass:[customCell class] forCellReuseIdentifier:NSStringFromClass([customCell class])];
    [self.view addSubview:self.tableView];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([customCell class]) forIndexPath:indexPath];

    return self.cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}

@end
