//
//  Doctor.m
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor {
    NSMutableArray *_patientList;
    NSMutableArray *_prescriptions;
}

- (instancetype) initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [[NSMutableArray alloc] init];
        _prescriptions = [[NSMutableArray alloc] init];
    }
    
    return self;
}


- (void) acceptPatient: (Patient *)patient {
    if (patient.healthCard) {
        [_patientList addObject:patient];
        NSLog(@"You are accepted!");
    } else {
        NSLog(@"Sorry, you need to have a valid health card to be accepted.");
    }
}

- (void) askInfo {
    NSLog(@"What's your name and do you have a valid health card?");
}

- (void) selfIntro {
    NSLog(@"Hi! My name is %@ and my specialization is %@.", self.name, self.specialization);
}

- (BOOL) verifyPatientInTheList:(Patient *)patient {
    return [_patientList containsObject:patient];
}

- (NSString *) writePrescription:(NSString *)symptom {
    NSString *prescription;
    if ([symptom isEqualTo: @"Cavity"]) {
        prescription = @"Sugery";
    } else if ([symptom isEqualTo:@"Pain"]) {
        prescription = @"Aspirin";
    } else {
        prescription = @"take some rest";
    }
    [_prescriptions addObject:prescription];
    return prescription;
}

- (NSMutableArray *) getPrescriptions {
    return _prescriptions;
}


@end
