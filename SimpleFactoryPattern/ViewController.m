//
//  ViewController.m
//  SimpleFactoryPattern
//
//  Created by Chien-Tai Cheng on 10/24/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "ViewController.h"
#import "SimpleBeverageFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Beverage *redTea = [SimpleBeverageFactory createBeverage:@"紅茶"];
    [redTea addMaterial];
    [redTea brew];
    [redTea pouredCup];

    Beverage *greenTea = [SimpleBeverageFactory createBeverage:@"綠茶"];
    [greenTea addMaterial];
    [greenTea brew];
    [greenTea pouredCup];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
