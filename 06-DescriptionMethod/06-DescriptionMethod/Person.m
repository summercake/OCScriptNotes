
//
//  Person.m
//  06-DescriptionMethod
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@implementation Person
@synthesize age, height, weight, name, tel, email;

// This method is actually ToString method in Java and C#
-(NSString *) description{
    NSString *str = [NSString stringWithFormat:@"name=%@, age=%i, height=%f, weight=%f, tel=%@, email=%@", name, age, height, weight, tel, email];
    return str;
}

//+(NSString *) description{
//    NSString *str = [NSString stringWithFormat:@"name=%@, age=%i, height=%f, weight=%f, tel=%@, email=%@", _name, _age, _height, _weight, tel, email];
//    return str;
//}
@end