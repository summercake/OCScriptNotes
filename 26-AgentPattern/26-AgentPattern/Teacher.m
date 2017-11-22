//
//  Teacher.m
//  26-AgentPattern
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Teacher.h"
#import "Body.h"
@implementation Teacher 
-(void)feedFood:(Body*)body{
    body.hungry -= 10;
    NSLog(@"feed Body %i", body.hungry);
}
-(void)singSong:(Body*)body{
    body.sleep += 10;
    NSLog(@"sing song %i", body.sleep);
}
@end
