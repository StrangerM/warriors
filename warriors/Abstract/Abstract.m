//
//  Abstract.m
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Abstract.h"

static CGFloat const basicStrength = 100.0f;
static CGFloat const basicDexterity = 100.0f;
static CGFloat const basicStamina = 100.0f;

static CGFloat const basicMaxHP = 1000.0f;
static CGFloat const basicDamage = 150.0f;
static CGFloat const basicDefence = 50.0f;
static CGFloat const basicCriticalCoefficient = 2.0f;
static CGFloat const basicCriticalRate = 0.25f;
static CGFloat const basicEvasion = 0.25f;

@interface Abstract ()


@end

@implementation Abstract

- (void)calculateAndSetParameters
{
    self.maxHP = basicMaxHP * self.stamina / basicStamina;
    self.currentHP = self.maxHP;
    self.damage = basicDamage * self.strength / basicStrength;
    self.defence = basicDefence * self.stamina / basicStamina;
    self.criticalCoefficient = basicCriticalCoefficient * self.dexterity / basicDexterity;
    self.criticalRate = basicCriticalRate * self.dexterity / basicDexterity;
    self.evasion = basicEvasion * self.dexterity / basicDexterity;
}

- (void)phisycalAttackOn:(Abstract *)player
{
    if ([self eventOcurredWithRate:self.evasion]) {
        return;
    }
    CGFloat tempDamage = self.damage;
    if ([self eventOcurredWithRate:self.criticalRate]) {
        tempDamage *= self.criticalCoefficient;
    }
    
    //implement HP delta calculation
//    CGFloat HP_DELTA;
//    HP_DELTA = self.maxHP - tempDamage + 0.2 * self.defence;
//    self.currentHP -= HP_DELTA;
//    
    if (player.currentHP < tempDamage + 0.2 * player.defence){
        player.currentHP = 0;
        return;
    }
    
    player.currentHP = player.currentHP - tempDamage + 0.2 * player.defence;
}
- (BOOL)eventOcurredWithRate:(CGFloat)rate
{
    NSMutableArray *critArray;
    NSInteger critSuccessQuantity = 100 * rate;
    NSInteger critFailureQuantity = 100 - critSuccessQuantity;
    for (int i = 0; i < critSuccessQuantity; i++) {
        [critArray addObject:@1];
    }
    for (int i = 0; i < critFailureQuantity; i++) {
        [critArray addObject:@0];
    }
    
    NSInteger index; // = from random
    // index = arc4random_uniform(1);
    index = arc4random() % 100;
        if ([critArray[index] boolValue]) {
        return YES;
    }
    return NO;
}

@end
