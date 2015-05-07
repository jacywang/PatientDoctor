//
//  Patient.h
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString *feeling;
@property (nonatomic, assign) int days;

@end
