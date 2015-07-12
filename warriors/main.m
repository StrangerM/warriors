//
//  main.m
//  warriors
//
//  Created by Admin on 10.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Knight.h"
#import "Rogue.h"
#import "Warrior.h"
#import "Abstract.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        Warrior *warLord = [[Warrior alloc] init];
        Rogue *theif = [[Rogue alloc] init];
        Knight *paladin = [[Knight alloc] init];
//        while (theif.currentHP != 0 || warLord.currentHP != 0) {
//            [warLord phisycalAttackOn:theif];
//            if (theif.currentHP == 0 || warLord.currentHP == 0){
//                NSLog(@"WarLordHP = @%f, TheifHP = @%f", warLord.currentHP, theif.currentHP);
//                break;
//            
//        }
//        [theif phisycalAttackOn:warLord];
//        if (theif.currentHP == 0 || warLord.currentHP == 0){
//          NSLog(@"WarLordHP = @%f, TheifHP = @%f", warLord.currentHP, theif.currentHP);
//          break;
//        }
//        NSLog(@"WarLordHP = @%f, TheifHP = @%f", warLord.currentHP, theif.currentHP);
//    }
//}
//        while (paladin.currentHP != 0 || warLord.currentHP != 0) {
//            [warLord phisycalAttackOn:paladin];
//            if (paladin.currentHP == 0 || warLord.currentHP == 0){
//                NSLog(@"WarLordHP = @%f, PaladinHP = @%f", warLord.currentHP, paladin.currentHP);
//                break;
//                
//            }
//            [paladin phisycalAttackOn:warLord];
//            if (paladin.currentHP == 0 || warLord.currentHP == 0){
//                NSLog(@"WarLordHP = @%f, PaladinHP = @%f", warLord.currentHP, paladin.currentHP);
//                break;
//            }
//            NSLog(@"WarLordHP = @%f, PaladinHP = @%f", warLord.currentHP, paladin.currentHP);
//        }
//    }
        while (theif.currentHP != 0 || paladin.currentHP != 0) {
            [paladin phisycalAttackOn:theif];
            if (theif.currentHP == 0 || paladin.currentHP == 0){
                NSLog(@"PaladinHP = @%f, TheifHP = @%f", paladin.currentHP, theif.currentHP);
                break;
                
            }
            [theif phisycalAttackOn:paladin];
            if (theif.currentHP == 0 || paladin.currentHP == 0){
                NSLog(@"PaladinHP = @%f, TheifHP = @%f", paladin.currentHP, theif.currentHP);
                break;
            }
            NSLog(@"PaladinHP = @%f, TheifHP = @%f", paladin.currentHP, theif.currentHP);
        }
    }
    
    return 0;
}


