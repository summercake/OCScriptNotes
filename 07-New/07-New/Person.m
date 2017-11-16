//
//  Person.m
//  07-New
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@implementation Person
-(instancetype)init{
    if (self = [super init]) {
        _age = 10;
    }
    return self;
}

-(NSString*)description{
    return [NSString stringWithFormat:@"age = %i", [self age]];
}
@end