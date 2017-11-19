//
//  Person.h
//  11-SEL
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
+(void)test;
-(void)demo;
-(void)signalWithNum:(NSString*)num;
-(void)makeObject:(id)obj andSEL:(SEL)sel;
@end
