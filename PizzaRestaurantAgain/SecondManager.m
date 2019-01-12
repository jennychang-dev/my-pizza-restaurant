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
    NSLog(@"produce pizza w this size %u and these toppings %@",size,toppings);
  //  if (//satisifies this)  pizza doesn't mind any toppings so always produce YES
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
// always upgrade to large, implement nice NSLog
    NSLog(@"second manager always wants to give ya a fatty pizza");
    return YES;
}

// at the end

@end
