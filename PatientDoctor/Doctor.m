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
}

- (instancetype) initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [[NSMutableArray alloc] init];
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


@end
