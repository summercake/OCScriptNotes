//
//  Person.m
//  25-Protocol
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)playBasketball{
    NSLog(@"Person Playing Basketball");
}
-(void)playSoccer{
    NSLog(@"Person Playing Soccer");
}
-(void)playBaseball{
    NSLog(@"Person Playing Baseball");
}

-(void)show{
    if ([self.wife respondsToSelector:@selector(cook)]) {
        [self.wife cook];
    }
    if ([self.wife respondsToSelector:@selector(wash)]) {
        [self.wife wash];
    }
    if ([self.wife respondsToSelector:@selector(job)]) {
        [self.wife job];
    }
}

@end
