//
//  Patient.m
//  PatientDoctor
//
//  Created by JIAN WANG on 5/7/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype) initWithName:(NSString *)name andHealthCard:(BOOL)healthcard {
    self = [super init];
    
    if (self) {
        _name = name;
        _healthCard = healthcard;
    }
    
    return self;
}

- (void) visitDocotr {
    [self askInfo];
}

- (void) askInfo {
    NSLog(@"Hello! What's your name and specialization?");
}
- (void) selfIntro {
    NSLog(@"My name is %@", self.name);
    if (self.healthCard) {
        NSLog(@"Yes, I have a valid health card.");
    } else {
        NSLog(@"No, I don't have a valid health card.");
    }
}

@end
