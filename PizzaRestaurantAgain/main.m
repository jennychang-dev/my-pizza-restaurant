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
#import "Manager.h"
#import "SecondManager.h"

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
            
            NSLog(@"Now would you like a grumpy manager or a cheerful manager?");
            char gimme[100];
            fgets(gimme,100,stdin);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSString *size = [[inputString componentsSeparatedByString:@" "] objectAtIndex:0]; // this gives me "small" as a string
            
            Conversion *newConversion = [[Conversion alloc] init];
            PizzaSize sizeEnum = [newConversion convertStringToEnum:size];
            // this will return pizza size form
            
            NSString *removeSize = [inputString stringByReplacingOccurrencesOfString:size withString:@""];
            NSString *requestedToppings = [removeSize stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSArray *toppings = [requestedToppings componentsSeparatedByString:@" "]; // this gives me an array of toppigns
            
            // below calls the kitch to make pizza
            Kitchen *restaurantKitchen = [[Kitchen alloc] init];
            [restaurantKitchen makePizzaWithSize:sizeEnum toppings:toppings];
            
            // come with a switch statement that takes a string and sets delegate
            NSString *inputManagerType = [[NSString alloc] initWithUTF8String:gimme];
            inputManagerType = [inputManagerType stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            Manager *mdel = [[Manager alloc] init];
            SecondManager *sdel = [[SecondManager alloc] init];
            
            if ([inputManagerType isEqualToString:@"grumpy"]) {
                restaurantKitchen.delegate = mdel;
            } else if
                ([inputManagerType isEqualToString:@"cheery"]) {
                    restaurantKitchen.delegate = sdel;
            } 
        }
        return 0;
    }
}

