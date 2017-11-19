//
//  Car.m
//  17-@Class
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Car.h"
#import "Wheel.h"

@implementation Car
-(void)dealloc{
    [_wheel release];
    [super dealloc];
}
@end
