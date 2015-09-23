//
//  ViewController.m
//  ScienceInc
//
//  Created by DV Reddy on 15/08/15.
//  Copyright (c) 2015 DVReddy. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewContollerViewController.h"

@interface ViewController (){

    SecondViewContollerViewController *secondVC;
}

@end

@implementation ViewController
@synthesize mainCategoryNames;
@synthesize innerCategoryList;
@synthesize categoryListOne,categoryListTwo,categoryListThree,categoryListFour,categoryListFive;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    webserviceHelper = [[WebserviceHelperClass alloc] init];
    webserviceHelper.delegate = self;
    [self getArticlesAPICall];
    mainCategoryNames = [[NSMutableArray alloc]init];
    innerCategoryList = [[NSMutableArray alloc]init];
    categoryListOne  = [[NSMutableArray alloc]init];
    categoryListTwo  = [[NSMutableArray alloc]init];
    categoryListThree  = [[NSMutableArray alloc]init];
    categoryListFour  = [[NSMutableArray alloc]init];
    categoryListFive  = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getArticlesAPICall {
     webserviceHelper.showLoadingView = YES;
     webserviceHelper.loadingViewText = @"Fetching";
    NSString *strUrl;
    
    strUrl = @"http://fierce-mesa-1366.herokuapp.com/";
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    
    [webserviceHelper callWebServiceForGETRequest:strUrl withParameters:dictionary withServiceTag:0];
}

- (IBAction)StartFetchingFromApi:(id)sender {
    NSLog(@"click strat fetching");
    
    
    //[self.navigationController pushViewController:secondVC animated:NO];
    
}

#pragma Webservice

-(void)apiCallResponse:(id)response andServiceTag:(int)tag {
   
   // NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [mainCategoryNames removeAllObjects];
    [innerCategoryList removeAllObjects];
    NSLog(@"Response objects Count:%@",response );
    for (int i=0; i< [response count]; i++){
    
        [mainCategoryNames addObject:[[response objectAtIndex:i]objectForKey:@"CategoryName"]];
        
        NSLog(@"Main Category Names :%@",mainCategoryNames);

    }
    for (int i=0; i< [mainCategoryNames count]; i++){
    if ([[mainCategoryNames objectAtIndex:i] isEqualToString:@"Politics"]) {
            
            [categoryListOne addObject:[[response objectAtIndex:i]objectForKey:@"Subcategories"]];
            NSLog(@"Politics Names :%@",categoryListOne);
            
           
            NSLog(@"log i :%d",i);
        
    }
       else if ([[mainCategoryNames objectAtIndex:i] isEqualToString:@"Cricket"]) {
           
                
                [categoryListTwo addObject:[[response objectAtIndex:i]objectForKey:@"Subcategories"]];
                NSLog(@"Cricket Names :%@",categoryListTwo);
                
                
                NSLog(@"log i :%d",i);
           
        }
        
       else if ([[mainCategoryNames objectAtIndex:i] isEqualToString:@"technology"]) {
           
               
               [categoryListThree addObject:[[response objectAtIndex:i]objectForKey:@"Subcategories"]];
               NSLog(@"technology Names :%@",categoryListThree);
               
               
               NSLog(@"log i :%d",i);
               
         
       }
       else if ([[mainCategoryNames objectAtIndex:i] isEqualToString:@"Social networks"]) {
           
               [categoryListFour addObject:[[response objectAtIndex:i]objectForKey:@"Subcategories"]];
               NSLog(@"Social networks :%@",categoryListFour);
               
               
               NSLog(@"log i :%d",i);
               
           
       }
        
       else if ([[mainCategoryNames objectAtIndex:i] isEqualToString:@"Gossip"]) {
               
               [categoryListFive addObject:[[response objectAtIndex:i]objectForKey:@"Subcategories"]];
               NSLog(@"Gossip :%@",categoryListFive);
               
               
               NSLog(@"log i :%d",i);
       }
    }
    
    //secondVC = [[SecondViewContollerViewController alloc] init];
    
//    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    secondVC = [mainstoryboard instantiateViewControllerWithIdentifier:@"SecondViewContollerViewController"];
    
    
    secondVC.mainCategoryNames = mainCategoryNames;
    secondVC.innerCategoryList = innerCategoryList;
    secondVC.categoryListOne = categoryListOne;
    secondVC.categoryListTwo = categoryListTwo;
    secondVC.categoryListThree = categoryListThree;
    secondVC.categoryListFour = categoryListFour;
    secondVC.categoryListFive = categoryListFive;
    NSLog(@"secondVC.mainCategoryNames :%@",secondVC.mainCategoryNames);
    [self.navigationController pushViewController:secondVC animated:YES];

    
}


-(void)apiCallError:(NSError *)error andServiceTag:(int)tag {

    


}



@end
