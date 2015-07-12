//
//  Warrior.m
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strength = 150.0;
        self.dexterity = 50;///ловкость
        self.stamina = 75;///выносливость
        [self calculateAndSetParameters];
        // [self phisycalAttackOn:(Abstract *)paladin]; видаэ помилку???&
    }
    return self;
}

@end
