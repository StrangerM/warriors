//
//  Rogue.m
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Rogue.h"

@implementation Rogue

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strength = 90.0;
        self.dexterity = 150;///ловкость
        self.stamina = 60;///выносливость
        [self calculateAndSetParameters];
    }
    return self;
}

@end
