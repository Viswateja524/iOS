//
//  BaseFetchTableViewController.h
//  WACoreDataSpotlightSample
//
//  Created by Viswateja Reddy on 06/10/2015.
//  Copyright © 2015 Wasappli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WAAppRouting/WAAppRouting.h>

@import CoreData;

@interface BaseFetchTableViewController : UITableViewController <WAAppRouterTargetControllerProtocol, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSFetchedResultsController *fetchResultsController;

@end
