//
//  Person.m
//  11-SEL
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
+(void)test{
    NSLog(@"++++++++++");
}
-(void)demo{
    NSLog(@"demo, demo, demo, demo");
}
-(void)signalWithNum:(NSString*)num{
    NSLog(@"num is %@", num);
}
-(void)makeObject:(id)obj andSEL:(SEL)sel{
    [obj performSelector:sel];
}
@end
