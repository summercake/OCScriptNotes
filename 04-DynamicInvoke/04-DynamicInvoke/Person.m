//
//  Person.m
//  04-DynamicInvoke
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person

// instancetype also is universal pointer
// it can decide type in complie time
// however, id will decide type in run time
// instancetype only can used as return type
-(instancetype)init {
//-(id)init {
    if (self = [super init]) {
        _age = 5;
    }
    return self;
}
@end
