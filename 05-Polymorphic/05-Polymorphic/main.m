//
//  main.m
//  05-Polymorphic
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKBase.h"
#import "FKSub.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKBase *bc = [[FKBase alloc] init];
        [bc base];
        [bc test];
        
        FKSub *sc = [[FKSub alloc] init];
        [sc base];
        [sc sub];
        [sc test];
        
        FKBase *pBc = [[FKSub alloc] init]; // ---------------> polymorphic
        [pBc base];
        [pBc test];
        
        id dyna = pBc;
        [dyna sub];
        
        NSLog(@"======================================================");
        
        Cat *c = [Cat new];
        [c eat];
        Dog *d = [Dog  new];
        [d eat];
        
        Animal *dog = [[Dog alloc] init];
        Animal *cat = [Cat new];
        [dog eat]; // ----------------------------------------------------> sub class has overridden eat method
        
        d = (Dog*)dog;
        [d bark];
        c = (Cat*)cat;
        [c miao];
        
        [Person dogFeed : d];
        [Person catFeed : c];
        
        [Person feed: d];
        [Person feed: c];
        
        
    }
    return 0;
}
