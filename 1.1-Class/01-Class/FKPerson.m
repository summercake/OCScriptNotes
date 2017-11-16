//
//  FKPerson.m
//  01-Class
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
@implementation FKPerson{
    int _testAttr; // ------> this member only can use in instanctiated object, and this is a hidden member
}

-(NSString*) getName{ // ------------------------------> getter
    return _name;
}
-(void) setName : (NSString*) n{ // -------------------> setter
    _name = n;
}

-(int) getAge{
    return _age;
}
-(void) setAge : (int) a{
    _age = a;
}

-(void) say : (NSString*) content{
    NSLog(@"%@", content);
}

-(NSString*) info{
    [self test]; // ------------------------------------> invoke test, which only can be used in @implementation
    return [NSString stringWithFormat : @"I'm a good man, my name is %@, my age is %d", _name, _age];
}

-(void) test{ // ---------------------------------------> this is a inner instanctiating method
    NSLog(@"This method defined in implementation part");
}

+(void) foo{
    NSLog(@"This is a class method, not a instance method");
}
@end
