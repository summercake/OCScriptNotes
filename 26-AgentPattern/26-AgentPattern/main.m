//
//  main.m
//  26-AgentPattern
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Body.h"
#import "Nanny.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    Body *b = [[Body alloc]init];
    Nanny *n = [[Nanny alloc]init];
    
    b.nanny = n;
    
    Student *s = [[Student alloc]init];
    b.nanny = s;
    
    [b food];
    [b sleepy];
    return 0;
}
