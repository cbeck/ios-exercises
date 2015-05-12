//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *drinks = [[NSMutableArray alloc] init];
    for (NSDictionary *character in charactersArray) {
        [drinks addObject:character[@"favorite drink"]];
    }
   
    return drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *quote = characterDictionary[@"quote"];
    NSMutableDictionary *characterDictionaryCopy = [characterDictionary mutableCopy];
    if (quote == nil || ![quote isKindOfClass:[NSString class]] || quote.length == 0){
        [characterDictionaryCopy setObject:@"Make it so, number 1" forKey:@"quote"];
    }
    return characterDictionaryCopy;
}

@end
