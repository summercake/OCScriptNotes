//
//  Body.m
//  26-AgentPattern
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Body.h"
#import "Nanny.h"

@implementation Body
-(void)food{
    self.hungry -= 5;
    NSLog(@"wanna eat %i", self.hungry);
    if ([self.nanny respondsToSelector:@selector(feedFood:)]) {
        [self.nanny feedFood:self];
    }
    
}
-(void)sleepy{
    self.hungry += 5;
    NSLog(@"sleepy %i", self.sleep);
    if ([self.nanny respondsToSelector:@selector(singSong:)]) {
        [self.nanny singSong:self];
    }
}
@end
