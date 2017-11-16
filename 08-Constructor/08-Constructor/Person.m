//
//  Person.m
//  08-Constructor
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
// counstructor
-(instancetype)init{
    if (self = [super init]) {
        _age = 10;
    }
    return self;
}
//-(NSString*)description{
//    return [NSString stringWithFormat:@"%i", _age];
//}
-(NSString*)description{
    return [NSString stringWithFormat:@"%i %@", _age, _name];
}

// self defined constructor
-(instancetype)initWithAge:(int)age{
    if (self = [super init]) {
        _age = age;
    }
    return self;
}

-(instancetype)initWithName:(NSString*)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

-(instancetype)initWithAge:(int)age andName:(NSString *)name{
    if (self = [super init]) {
        _age = age;
        _name = name;
    }
    return self;
}
@end
