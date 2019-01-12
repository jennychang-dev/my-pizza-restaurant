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
    Kitchen *kitcho = [[Kitchen alloc] init];
    Pizza *makePizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
    Manager *assign = [[Manager alloc] init];
    kitcho.delegate = assign;
    
    [kitcho.delegate kitchen:kitcho shouldMakePizzaOfSize:size andToppings:toppings];
    return makePizza;
}

// optional: use respondsToSelector:

@end
