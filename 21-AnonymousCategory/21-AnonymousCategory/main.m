//
//  main.m
//  21-AnonymousCategory
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc]init];
    p.age = 100;
    [p say];
    return 0;
}
