//
//  Person.m
//  12-MemoryMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc{
    NSLog(@"Person dealloc");
    [super dealloc];
}
@end
