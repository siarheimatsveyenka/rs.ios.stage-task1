#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *resultRanks = [NSMutableArray array];
    NSOrderedSet *ranksSet = [NSOrderedSet orderedSetWithArray:rankedArray];
    NSMutableArray *ranksArray = [ranksSet.array mutableCopy];
    
    for (int i = 0; i < playerArray.count; i++) {
        if(rankedArray.count == 0){
            [resultRanks addObject:@1];
        } else if ([ranksArray indexOfObject:playerArray[i]] < ranksArray.count) {
            [resultRanks addObject:@([ranksArray indexOfObject:playerArray[i]] + 1)];
        } else {
            if ([playerArray[i] intValue] < [ranksArray.lastObject intValue]){
                [resultRanks addObject:@(ranksArray.count + 1)];
            } else {
                for (NSUInteger y = 0; y < ranksArray.count; y++) {
                    if ([playerArray[i] intValue] > [ranksArray[y] intValue]) {
                        [resultRanks addObject:@(y + 1)];
                        break;
                    }
                }
            }
        }
    }
    return resultRanks;
}

@end
