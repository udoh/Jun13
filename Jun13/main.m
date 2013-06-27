//
//  main.m
//  Jun13
//
//  Created by Udo Hoppenworth on 6/12/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun13AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        // Git test change
        
        NSLog(@"This is output produced by NSLog inside the main() function");
        
        int i = 0;
        NSLog(@"The value of the integer variable i is %d.", i);
        
        CGFloat f = 3.14159;
        NSLog(@"The value of PI is %g.", f);
        
        NSString *s = @"Sunny with 79 degrees F";
        NSLog(@"The weather forcast for today in NYC is: %@.", s);
        
        CGPoint p = CGPointMake(15.0, 25.0);
        NSLog(@"The value of point p is x: %g, y: %g.", p.x, p.y);
        
        CGRect r = CGRectMake(0.0, 0.0, 360.0, 480.0);
        NSLog(@"The origin of the rect r is (%g, %g) with a width of %g and a height of %g.",
              r.origin.x, r.origin.y,
              r.size.width, r.size.height);
        
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        NSLog(@"The version of the current iOS device is %@.", version);
        
        UIScreen *screen = [UIScreen mainScreen];
        CGRect bounds = [screen bounds];
        NSLog(@"The origin of the screen is (%g, %g) and the dimensions are %g by %g.",
              bounds.origin.x, bounds.origin.y,
              bounds.size.width, bounds.size.height);
        

        // enums
        enum colors {
            red,
            green,
            blue
        };
        
        enum colors color = green;
        NSLog(@"The value for green is stored as %d", color);
        

        // NSUInterger
        NSUInteger uBiggest = 4294967295;
        NSLog(@"The maximum value for an NSUInteger type is %u", (unsigned int)uBiggest);
        
        // BOOL
        BOOL myDecision = YES;
        myDecision = !myDecision;
        NSLog(@"The value of myDecision is %d", myDecision);
        
        // Pointers
        int j = 10;
        int *pointerToJ = &j;
        NSLog(@"The address of the variable j is %p", pointerToJ);
        
        float myFloat = 1.4323f;
        float *myFloatPointer = &myFloat;
        NSLog(@"The address of the variable myFloat is %p", myFloatPointer);
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun13AppDelegate class]));
    }
}
