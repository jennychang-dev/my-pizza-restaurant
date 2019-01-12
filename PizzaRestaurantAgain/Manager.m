//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    if ([toppings containsObject:@"anchovies"])
        NSLog(@"no man contains anchovies!!!!");
        return NO;
}


- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    NSLog(@"kitchen should never upgrade");
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    if ([self respondsToSelector:@selector(kitchen:shouldMakePizzaOfSize:andToppings:)]) {
        return;
    }
}

@end

