//
//  SecondViewContollerViewController.m
//  ScienceInc
//
//  Created by DV Reddy on 15/08/15.
//  Copyright (c) 2015 DVReddy. All rights reserved.
//

#import "SecondViewContollerViewController.h"
#import "thirdViewContoller.h"
@interface SecondViewContollerViewController (){

    thirdViewContoller *thirdVC;

}

@end

@implementation SecondViewContollerViewController
@synthesize mainCategoryNames,innerCategoryList,categoryListOne,categoryListTwo,categoryListThree,categoryListFour,categoryListFive;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Main Category Names :%@",mainCategoryNames);
    NSLog(@"inner Category List :%@",innerCategoryList);
    NSLog(@"Category List one :%@",categoryListOne);
    NSLog(@"Category List one :%@",categoryListTwo);
    NSLog(@"Category List one :%@",categoryListThree);
    NSLog(@"Category List one :%@",categoryListFour);
    NSLog(@"Category List one :%@",categoryListFive);
    self.tableViewFirst.dataSource = self;
    self.tableViewFirst.delegate = self;
    [self.tableViewFirst reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return mainCategoryNames.count;

}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
    }
//    UILabel *lblName = (UILabel *)[cell viewWithTag:100]; [lblName setText:[mainCategoryNames objectAtIndex:[indexPath row]]];
    
    cell.textLabel.text = [mainCategoryNames objectAtIndex:indexPath.row];
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    thirdVC = [mainstoryboard instantiateViewControllerWithIdentifier:@"thirdViewContoller"];
    NSLog(@"Index path :%@",indexPath);
    if (indexPath.row == 0) {
        thirdVC.categoryDetailList = categoryListOne;
        NSLog(@"thrid Array :%@",thirdVC.categoryDetailList);
    }
   else if (indexPath.row == 1) {
        thirdVC.categoryDetailList = categoryListTwo;
    }

   else if (indexPath.row == 2) {
       thirdVC.categoryDetailList = categoryListThree;
   }
   else if (indexPath.row == 3) {
       thirdVC.categoryDetailList = categoryListFour;
   }
   else if (indexPath.row == 4) {
       thirdVC.categoryDetailList = categoryListFive;
   }
    
    [self.navigationController pushViewController:thirdVC animated:YES];
}


@end
