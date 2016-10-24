//
//  SimpleBeverageFactory.m
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "SimpleBeverageFactory.h"
#import "RedTea.h"
#import "GreenTea.h"

@implementation SimpleBeverageFactory

+ (Beverage* )createBeverage:(NSString *)beverageType {
    if ([beverageType isEqualToString:@"紅茶"]) {
        return [RedTea new];
    } else if ([beverageType isEqualToString:@"綠茶"]) {
        return [GreenTea new];
    } else {
        return [Beverage new];
    }
}

@end
