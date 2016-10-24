//
//  RedTea.m
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "RedTea.h"

@implementation RedTea

- (void)addMaterial {
    NSLog(@"加入紅茶包");
}

- (void)brew {
    NSLog(@"沖泡");
}

- (void)pouredCup {
    NSLog(@"將紅茶裝包");
}

@end
