//
//  main.m
//  25-Protocol
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"
#import "Wife.h"
#import "WifeCondition.h"

int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc]init];
    [p playBasketball];
    [p playSoccer];
    [p playBaseball];
    
    Student *s = [[Student alloc]init];
    [s playBasketball];
    [s playSoccer];
    [s playBaseball];
    
    Teacher *t = [[Teacher alloc]init];
    [t playBasketball];
    [t playSoccer];
    [t playBaseball];
    
    Wife<WifeCondition> *w = [[Wife alloc]init];
    p.wife = w;
    [p show];
    return 0;
}
