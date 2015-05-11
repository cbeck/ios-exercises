//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *stringToReturn = [[NSString stringWithFormat:@"%@", @""] mutableCopy];
    if (number < otherNumber) {
        for (number; number <= otherNumber; number++) {
            [stringToReturn appendString:[NSString stringWithFormat:@"%d", (int)number]];
        }
    } else {
        for (otherNumber; otherNumber <= number; otherNumber++) {
            [stringToReturn appendString:[NSString stringWithFormat:@"%d", (int)otherNumber]];
        }
        
    }
    return stringToReturn;
}

@end
