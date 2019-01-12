//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "Conversion.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and toppings:");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSString *size = [[inputString componentsSeparatedByString:@" "] objectAtIndex:0];
            
            Conversion *newConversion = [[Conversion alloc] init];
            PizzaSize sizeEnum = [newConversion convertStringToEnum:size];
            // this will return pizza size

            NSString *removeSize = [inputString stringByReplacingOccurrencesOfString:size withString:@""];
            NSString *requestedToppings = [removeSize stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSArray *toppings = [requestedToppings componentsSeparatedByString:@" "];
            
            Kitchen *restaurantKitchen = [[Kitchen alloc] init];
            Pizza *p = [restaurantKitchen makePizzaWithSize:sizeEnum toppings:toppings];
            if ([p size] ==  medium){
                NSLog(@"create medium pizza");
            }
    }
    return 0;
}
}

