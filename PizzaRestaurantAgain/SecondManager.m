//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    NSLog(@"will satisfy your pizza order");
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
// always upgrade to large, implement nice NSLog
    NSLog(@"have a nice day and here's an upgrade to your order!");
    return YES;
}

@end
