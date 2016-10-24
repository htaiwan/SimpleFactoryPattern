//
//  GreenTea.m
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "GreenTea.h"

@implementation GreenTea

- (void)addMaterial {
    NSLog(@"加入綠茶包");
}

- (void)brew {
    NSLog(@"沖泡");
}

- (void)pouredCup {
    NSLog(@"將綠茶裝包");
}

@end
