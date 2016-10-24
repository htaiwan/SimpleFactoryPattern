//
//  Beverage.m
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "Beverage.h"

@implementation Beverage

- (void)addMaterial {
    NSLog(@"加入飲料包");
}

- (void)brew {
    NSLog(@"沖泡");
}

- (void)pouredCup {
    NSLog(@"將飲料裝包");
}

@end
