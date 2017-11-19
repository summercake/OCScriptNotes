//
//  Person.h
//  17-@Class
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Car;

// import is a pre-compile command, it can copy import file to current file
// if original file changed, import command will re-copy file
// @class only to tell compiler who is a class
// if use @class in .h file, import must be used in .m file
@interface Person : NSObject

@end