//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jenny Chang on 10/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef enum PizzaSize
{
    small,
    medium,
    large
} PizzaSize;

@property PizzaSize size;
@property NSArray *toppings;

-(instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings;
+(Pizza *)largePepperoni;
+(Pizza *)meatLoversWithSize:(PizzaSize)size;

@end

NS_ASSUME_NONNULL_END
