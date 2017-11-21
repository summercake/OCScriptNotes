//
//  Person.h
//  19-UsingARCWithMRC
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
@interface Person : NSObject
@property(nonatomic, strong)Dog *dog;
@end
