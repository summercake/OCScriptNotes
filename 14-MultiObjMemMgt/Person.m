//
//  Person.m
//  14-MultiObjMemMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setRoom : (Room*)room{
    [room release];
    _room = [room retain];
}

-(Room*)room{
    return _room;
}
-(void)dealloc{
    NSLog(@"%s", __func__);
    [_room release];
    [super dealloc];
}
@end
