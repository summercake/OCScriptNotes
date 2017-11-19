//
//  Person.m
//  09-ClassFactory
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype) person{
//    Person *p = [[Person alloc] init]; // -----------------> class name is illegal, it can cause many run time problems
    Person *p = [[self alloc] init]; // ---------------------> in oc class factory, "self" must be used,
    return p;
    //    return [[self alloc] init];

}
+(instancetype) personWithAge:(int)age{ // ------------------> Apple Standard
    Person *p = [Person person];
    p.age = age;
    return p;
}
@end
