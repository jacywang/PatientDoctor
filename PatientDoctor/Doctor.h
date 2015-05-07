//
//  Doctor.h
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, assign) int years;

- (void) acceptPatient:(Patient*)patient;
- (instancetype) initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
- (void) askInfo;
- (void) selfIntro;
- (BOOL) verifyPatientInTheList:(Patient *)patient;
- (NSString *) writePrescription:(NSString *)symptom;

@end
