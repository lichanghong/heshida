//
//  MoreViewController.m
//  heshida
//
//  Created by 李长鸿 on 8/9/15.
//  Copyright (c) 2015 李长鸿. All rights reserved.
//

#import "MoreViewController.h"

@interface MoreViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MoreViewController
{
    NSArray *contentArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    contentArr = [HHDataUtil moreInfos];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return contentArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *schoolIdentifier = @"More_cell_identifier";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:schoolIdentifier forIndexPath:indexPath];
    cell.textLabel.text = contentArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
