//
//  Person.m
//  28-NSArray
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)say{
    NSLog(@"saying");
}
-(NSString *)description{
    return [NSString stringWithFormat:@"age = %i", _age];
}
@end
