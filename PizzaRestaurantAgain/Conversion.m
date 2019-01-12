//
//  Conversion.m
//  PizzaRestaurant
//
//  Created by Jenny Chang on 10/01/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Conversion.h"

@implementation Conversion

-(instancetype)init:(NSString *)size {
    self = [super init];
    if (self) {
        self.size = size;
    }
    return self;
}

-(PizzaSize)convertStringToEnum:(NSString *)size {
    if ([size isEqualToString:@"small"]) {
        self.i = small;
        
    } else if([size isEqualToString:@"medium"]) {
        self.i = medium;
    } else {
            self.i = large;
        }
    return self.i;
    
}


@end
