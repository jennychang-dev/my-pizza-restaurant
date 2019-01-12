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
    NSLog(@"requested pizza for manager is %u size and %@ toppings",size,toppings);
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    NSLog(@"kitchen should never upgrade as manager is a bitch");
    return YES;
}

@end
