#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    } else {
        NSInteger leftIndex = 0;
        NSInteger rightIndex = self.count - 1;
        NSInteger midIndex = leftIndex + (rightIndex - leftIndex) / 2;
        
        for (int i = 0; i < self.count; i++) {
            midIndex = leftIndex + (rightIndex - leftIndex) / 2;

            if (leftIndex < rightIndex) {
                if ([self[midIndex] integerValue] > [self[rightIndex] integerValue]) {
                    leftIndex = midIndex + 1;
                } else {
                    rightIndex = midIndex;
                }
            }
        }
    
        return self[leftIndex];
    }
}

@end
