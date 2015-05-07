//
//  Patient.h
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, assign) int days;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, strong) NSString *prescription;

- (instancetype) initWithName:(NSString *)name
                andHealthCard:(BOOL)healthcard
                andSymptom:(NSString *)symptom;
- (void) visitDocotr;
- (void) askInfo;
- (void) selfIntro;
- (void) requestMedication:(Doctor *)doctor;

@end
