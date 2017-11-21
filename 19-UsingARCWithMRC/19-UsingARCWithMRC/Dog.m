//
//  Dog.m
//  19-UsingARCWithMRC
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Dog.h"
#import "Person.h"
@implementation Dog
-(void)dealloc{
    NSLog(@"%s", __func__);
}
@end
