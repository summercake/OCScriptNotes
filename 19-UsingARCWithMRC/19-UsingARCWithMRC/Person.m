//
//  Person.m
//  19-UsingARCWithMRC
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
@implementation Person
-(void)dealloc{
    NSLog(@"%s", __func__);
}
@end
