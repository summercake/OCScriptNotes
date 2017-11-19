//
//  Room.m
//  14-MultiObjMemMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Room.h"

@implementation Room

-(void)dealloc{
    NSLog(@"%s %i", __func__, _num);
    [super dealloc];
}
@end
