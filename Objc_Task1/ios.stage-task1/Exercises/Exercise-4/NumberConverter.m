#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSInteger const intNumber = [number intValue];
    NSInteger const positiveNumber = labs(intNumber);
    NSNumber const *positiveNSNumber = @(positiveNumber);
    NSString const *positiveNumberNSString = [positiveNSNumber stringValue];
    NSMutableArray<NSString *> *stringArrayOfPositive = [NSMutableArray array];
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:positiveNumberNSString.length];
    NSInteger index = 0;

    for (NSUInteger i = 0; i < positiveNumberNSString.length; i++) {
        NSString *character = [positiveNumberNSString substringWithRange:NSMakeRange(i, 1)];
        [stringArrayOfPositive addObject:character];
        [result addObject:@""];
        NSLog(@"stringArrayOfPositive == %@", stringArrayOfPositive);
        index = result.count;
        NSLog(@"index =  %ld", (long)stringArrayOfPositive.count);

    }
    
    for (NSString *item in stringArrayOfPositive) {
        result[index - 1] = item;
        index--;
    }
    return result;
}

@end
