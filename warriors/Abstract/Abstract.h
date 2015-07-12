//
//  Abstract.h
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Abstract : NSObject

@property (nonatomic) CGFloat strength;
@property (nonatomic) CGFloat dexterity;///ловкость
@property (nonatomic) CGFloat stamina;///выносливость

@property (nonatomic) CGFloat maxHP;
@property (nonatomic) CGFloat currentHP;
@property (nonatomic) CGFloat damage;
@property (nonatomic) CGFloat defence;
@property (nonatomic) CGFloat criticalCoefficient;
@property (nonatomic) CGFloat criticalRate;
@property (nonatomic) CGFloat evasion;

- (void)calculateAndSetParameters;
- (void)phisycalAttackOn:(Abstract *)player;

@end
