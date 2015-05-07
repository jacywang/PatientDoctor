//
//  main.m
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctorIan = [[Doctor alloc] initWithName:@"Ian" andSpecialization:@"Dentistry"];
        Patient *patientVinny = [[Patient alloc] initWithName:@"Vinny" andHealthCard:YES andSymptom:@"Cavity"];
        Patient *patientSunny = [[Patient alloc] initWithName:@"Sunny" andHealthCard:NO andSymptom:@"Pain"];
        
        [patientVinny visitDocotr];
        [doctorIan selfIntro];
        [doctorIan askInfo];
        [patientVinny selfIntro];
        [doctorIan acceptPatient:patientVinny];
        [patientVinny requestMedication:doctorIan];
        
        [patientSunny visitDocotr];
        [doctorIan selfIntro];
        [doctorIan askInfo];
        [patientSunny selfIntro];
        [doctorIan acceptPatient:patientSunny];
        [patientSunny requestMedication:doctorIan];

    }
    return 0;
}
