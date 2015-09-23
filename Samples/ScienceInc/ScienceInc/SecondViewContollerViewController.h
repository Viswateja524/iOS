//
//  SecondViewContollerViewController.h
//  ScienceInc
//
//  Created by DV Reddy on 15/08/15.
//  Copyright (c) 2015 DVReddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewContollerViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{

}
@property (weak, nonatomic) IBOutlet UITableView *tableViewFirst;
@property (nonatomic,strong) NSMutableArray * mainCategoryNames;
@property (nonatomic,strong) NSMutableArray * innerCategoryList;

@property (nonatomic,strong) NSMutableArray * categoryListOne;
@property (nonatomic,strong) NSMutableArray * categoryListTwo;
@property (nonatomic,strong) NSMutableArray * categoryListThree;
@property (nonatomic,strong) NSMutableArray * categoryListFour;
@property (nonatomic,strong) NSMutableArray * categoryListFive;
@end
