//
//  Person.h
//  09-ClassFactory
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
+(instancetype) person;
+(instancetype) personWithAge:(int)age; // ------------------> Apple Standard
@end
