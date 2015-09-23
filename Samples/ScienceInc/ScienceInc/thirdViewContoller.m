//
//  thirdViewContoller.m
//  ScienceInc
//
//  Created by DV Reddy on 16/08/15.
//  Copyright (c) 2015 DVReddy. All rights reserved.
//

#import "thirdViewContoller.h"
#import "UIImageView+AFNetworking.h"

@interface thirdViewContoller ()

@end

@implementation thirdViewContoller
@synthesize categoryDetailList;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"categoryDetailList :%@",categoryDetailList);
    self.tablewViewSecond.dataSource = self;
    self.tablewViewSecond.delegate = self;
    [self.tablewViewSecond reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return categoryDetailList.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"Celltwo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
    }
  
    NSMutableDictionary * values = categoryDetailList[indexPath.row];
    NSLog(@"Values :%@",values);
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:4];
    UILabel *lblDescription = (UILabel *)[cell viewWithTag:3];
    UILabel *lblSubCategoryName = (UILabel *)[cell viewWithTag:2];
    UILabel *lblSubCateogryID = (UILabel *)[cell viewWithTag:1];
  
    lblSubCateogryID.text = @"Hi";
    lblSubCategoryName.text = @"Hi";
    lblDescription.text = @"Hi";
    
    //[imageView setImageWithURL:[NSURL URLWithString:values[@"ImageUrl"]]];
    
//    lblSubCateogryID.text = values[@"subCategoryId"];
//    lblSubCategoryName.text = values[@"subCategoryName"];
//    lblDescription.text = values[@"description"];
//    [imageView setImageWithURL:[NSURL URLWithString:values[@"ImageUrl"]]];
    
    return cell;
}


@end
