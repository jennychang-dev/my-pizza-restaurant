//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Manager.h"
#import "SecondManager.h"

@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *jcPizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
//    NSLog(@"toppings: %@, you have reached initialisation point",toppings);
    
    return jcPizza;
}

// optional: use respondsToSelector:

@end
