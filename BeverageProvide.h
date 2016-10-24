//
//  BeverageProvide.h
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BeverageProvide <NSObject>

@required
- (void)addMaterial;
- (void)brew;
- (void)pouredCup;

@end
