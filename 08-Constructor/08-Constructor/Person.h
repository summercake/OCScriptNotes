//
//  Person.h
//  08-Constructor
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
@property NSString* name;
-(instancetype)initWithAge:(int)age;
-(instancetype)initWithName:(NSString*)name;
-(instancetype)initWithAge:(int)age andName: (NSString*)name;
@end
