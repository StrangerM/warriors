//
//  Knight.m
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Knight.h"

@implementation Knight

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strength = 75.0;
        self.dexterity = 75;///ловкость
        self.stamina = 80;///выносливость
        [self calculateAndSetParameters];
    }
    return self;
}

@end
