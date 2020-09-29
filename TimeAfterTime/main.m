//
//  main.m
//  TimeAfterTime
//
//  Created by Nick Nguyen on 9/29/20.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
    }
    return 0;
}
