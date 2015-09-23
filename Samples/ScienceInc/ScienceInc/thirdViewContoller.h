//
//  thirdViewContoller.h
//  ScienceInc
//
//  Created by DV Reddy on 16/08/15.
//  Copyright (c) 2015 DVReddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewContoller : UIViewController<UITableViewDelegate,UITableViewDataSource>{

}
@property (weak, nonatomic) IBOutlet UITableView *tablewViewSecond;

@property (nonatomic,strong) NSMutableArray * categoryDetailList;

@property (nonatomic,strong) NSMutableArray * categoryListOne;
@property (nonatomic,strong) NSMutableArray * categoryListTwo;
@property (nonatomic,strong) NSMutableArray * categoryListThree;
@property (nonatomic,strong) NSMutableArray * categoryListFour;
@property (nonatomic,strong) NSMutableArray * categoryListFive;
@property (weak, nonatomic) IBOutlet UILabel *subCategoryID;
@property (weak, nonatomic) IBOutlet UILabel *subCategoryName;
@property (weak, nonatomic) IBOutlet UILabel *Description;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
