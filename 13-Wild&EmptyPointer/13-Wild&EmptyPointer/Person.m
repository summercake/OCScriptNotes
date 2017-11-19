//
//  Person.m
//  13-Wild&EmptyPointer
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc{
    NSLog(@"%s", __func__); // ---------------> it can print object name and method name
    [super dealloc];
}
@end
