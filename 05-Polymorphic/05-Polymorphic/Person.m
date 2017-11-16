//
//  Person.m
//  05-Polymorphic
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@implementation Person
+(void) dogFeed: (Dog *) dog{
    [dog eat];
}

+(void) catFeed: (Cat *) cat{
    [cat eat];
}
+(void) feed:(Animal *)animal{
    [animal eat];
}
@end