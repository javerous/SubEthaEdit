//  NSScreenTCMAdditions.m
//  SubEthaEdit
//
//  Created by Dominik Wagner on 23.05.07.

#import "NSScreenTCMAdditions.h"

@implementation NSScreen (NSScreenTCMAdditions)
+ (NSScreen *)menuBarContainingScreen {
    NSArray *screens = [NSScreen screens];
    if ([screens count] > 0) {
        return [screens objectAtIndex:0];
    } else {
        return nil;
    }
}

+ (NSScreen *)screenContainingPoint:(NSPoint)aPoint {
    NSArray *screens = [NSScreen screens];
    for (NSScreen *screen in screens) {
        if (NSPointInRect(aPoint,[screen frame])) {
            return screen;
        }
    }
    return nil;
}

@end
