//
//  Conversion.h
//  PizzaRestaurant
//
//  Created by Jenny Chang on 10/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "SecondManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface Conversion : NSObject

@property NSString *size;
-(instancetype)init:(NSString *)size;
-(PizzaSize)convertStringToEnum:(NSString *)size;
@property PizzaSize i;

@end

NS_ASSUME_NONNULL_END
