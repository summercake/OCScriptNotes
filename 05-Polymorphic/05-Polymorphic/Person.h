
//
//  Person.h
//  05-Polymorphic
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"
@interface Person : NSObject{
    
}
+(void) dogFeed:(Dog *) dog;
+(void) catFeed:(Cat *) cat;
+(void) feed:(Animal *) animal; // --------------------> the best way to use polymorphic
@end

