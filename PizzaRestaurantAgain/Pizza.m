//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jenny Chang on 10/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    
    return self;
}

+(Pizza *)largePepperoni {
    // create large pepperoni pizza
    Pizza *pepperoni = [[Pizza alloc] initWithPizzaSize:large andToppings:@[@"pepperoni",@"mozza"]];
    return pepperoni;
}

+(Pizza *)meatLoversWithSize:(PizzaSize)size {
    
    Pizza *meatFeast = [[Pizza alloc] initWithPizzaSize:size andToppings:@[@"salami",@"cheez",@"sausage"]];
    return meatFeast;
}

@end
