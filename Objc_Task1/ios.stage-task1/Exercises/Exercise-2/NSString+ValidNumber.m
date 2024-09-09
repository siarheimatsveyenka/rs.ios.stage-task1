#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    const char *array = [self UTF8String];
    BOOL containsDigits = false;
    
    if (self.length == 0) {
        return false;
    } else {
        for (int i = 0; i < strlen(array) ; i++) {
            if (isdigit(array[i])) {
                containsDigits = true;
            } else {
                containsDigits = false;
                break;
            }
        }
    }
    return containsDigits;
}

@end
