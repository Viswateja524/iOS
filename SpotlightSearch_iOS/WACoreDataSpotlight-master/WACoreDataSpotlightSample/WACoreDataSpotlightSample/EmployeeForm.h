//
//  EmployeeForm.h
//  WACoreDataSpotlightSample
//
//  Created by Viswateja Reddy on 06/10/2015.
//  Copyright © 2015 Wasappli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FXForms/FXForms.h>

@interface EmployeeForm : NSObject <FXForm>

@property (nonatomic, copy  ) NSString *firstName;
@property (nonatomic, copy  ) NSString *lastName;
@property (nonatomic, retain) NSDate   *birthDate;
@property (nonatomic, copy  ) NSString *jobTitle;
@property (nonatomic, copy  ) NSString *avatarImageName;

@end
