//
//  ViewController.m
//  StaticCellTest
//
//  Created by In Chung Yeul on 2014. 1. 6..
//  Copyright (c) 2014년 In Chung Yeul. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"
#import "Product.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource> {
    NSArray *data;
}

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [data count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL" forIndexPath:indexPath];
//    cell.textLabel.text = @"a";
//    cell.imageView.image = [UIImage imageNamed:@"baseball.png"];
    
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL" forIndexPath:indexPath];
    
    Product *item = data[indexPath.row];
    [cell setProductInfo:item];
    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[[Product product:@"BaseBall" price:@"100" image:@"baseball.png"],
             [Product product:@"BasketBall" price:@"200" image:@"basketball.png"],
             [Product product:@"FootBall" price:@"250" image:@"football.png"],
             [Product product:@"RugbyBall" price:@"300" image:@"rugbyball.png"],
             [Product product:@"Wilson" price:@"999" image:@"volleyball.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
