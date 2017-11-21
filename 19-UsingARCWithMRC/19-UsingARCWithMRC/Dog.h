//
//  Dog.h
//  19-UsingARCWithMRC
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Dog : NSObject
@property(nonatomic, weak)Person *owner;
@end
