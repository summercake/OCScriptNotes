//
//  Person.m
//  18-Autorelease
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)run{
    NSLog(@"%s",__func__);
}
-(void)dealloc{
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end
