//
//  Student.m
//  07-New
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@implementation Student
-(instancetype)init{
    if(self = [super init]){
        [self setAge:10];
        _number = 1;
    }
    return self;
}
-(NSString*)description{
    return [NSString stringWithFormat:@"age = %i, number = %i", [self age], _number];
}
@end