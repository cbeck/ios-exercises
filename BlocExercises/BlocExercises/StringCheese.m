//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favorite = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favorite;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    // note - if / else not intoduced yet. Bring up with Aaron.
    if (cheeseRange.location == NSNotFound) {
        return cheeseName;
    } else {
        NSString *cheeseOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseOnly;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSMutableString *cheeseString = [[NSString stringWithFormat:@"%ld cheese", (long) cheeseCount] mutableCopy];
    if (cheeseCount > 1) {
         // refactored
        [cheeseString appendString:@"s"];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseString;
}

@end
