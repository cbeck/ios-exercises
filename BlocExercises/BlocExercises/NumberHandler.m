//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return @(number.integerValue *2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *numbers = [NSMutableArray new];
    for (number; number <= otherNumber; number++) {
        [numbers addObject:[NSNumber numberWithInteger:number]];
    }
    return numbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSMutableArray *numbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [numbers sortUsingDescriptors:@[sortDescriptor]];
     NSNumber* lowest = [numbers firstObject];
    return lowest.integerValue;
    
//    NSInteger lowest = NSIntegerMax;
//    for (NSNumber *number in arrayOfNumbers) {
//        NSInteger intValue = [number integerValue];
//        if (intValue < lowest) {
//            lowest = intValue;
//        }
//    }
//    
//    
//    return lowest;
}

@end
