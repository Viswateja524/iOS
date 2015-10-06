//
//  Employee.m
//  WACoreDataSpotlightSample
//
//  Created by Viswateja Reddy on 06/10/2015.
//  Copyright © 2015 Wasappli. All rights reserved.
//

#import "Employee.h"
#import "Company.h"

@implementation Employee

- (NSString *)employeeID {
    return [self.firstName stringByAppendingString:self.lastName];
}

@end
