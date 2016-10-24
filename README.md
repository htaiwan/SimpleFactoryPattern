# Simple Factory Pattern 簡單工廠模式

****

## What is the pattern 

透過一個工廠類別的內部邏輯來創造某個所需要的物件。

## Why use the pattern 
1. 工廠含必要的邏輯判斷，可以決定在什麼時候創建哪一個產品的實例，客戶端可以免除直接創建產品對象的責任。
2. 可以在不修改客戶端資料的情況下，變更或新增具體產品，提高了系統的靈活性。 


## How to use the pattern

抽象產品角色(Product) - 它一般是由具體產品繼承的父類 - Beverage

```objective-c
#import "BeverageProvide.h"

@interface Beverage : NSObject <BeverageProvide>

@end
```

具體產品角色(ConcreteProduct) - 工廠類所創建的對象就是此角色的物件 - RedTea, GreenTea

```objective-c
#import <Foundation/Foundation.h>
#import "Beverage.h"

@interface RedTea : Beverage

@end
```

```objective-c
#import <Foundation/Foundation.h>
#import "Beverage.h"

@interface GreenTea : Beverage

@end
```

工廠角色(Factory) - 封裝現創建各種所需物件的內部邏輯 - SimpleBeverageFactory 

```objective-c

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
```

用戶端使用

```objective-c
 Beverage *redTea = [SimpleBeverageFactory createBeverage:@"紅茶"];
    [redTea addMaterial];
    [redTea brew];
    [redTea pouredCup];

Beverage *greenTea = [SimpleBeverageFactory createBeverage:@"綠茶"];
    [greenTea addMaterial];
    [greenTea brew];
    [greenTea pouredCup];
    
```



