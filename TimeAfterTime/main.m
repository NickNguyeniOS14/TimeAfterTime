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

        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);


        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);

        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[calendar calendarIdentifier]);

        unsigned long day = [calendar ordinalityOfUnit:NSCalendarUnitDay
                                                inUnit:NSCalendarUnitMonth
                                               forDate:now];

        NSLog(@"This is day %lu of the month",day);


        [calendar ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];

        NSHost *currentHost = [[NSHost alloc]init];
        NSString *name = [currentHost localizedName];
        NSLog(@"My computer name is %@",name);
    }
    return 0;
}
