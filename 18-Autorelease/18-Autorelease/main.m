//
//  main.m
//  18-Autorelease
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool { // ----------------------> you can create an auto release pool like this
//        Person *p = [[Person all˜oc]init];
//        [p run];
//        [p autorelease]; // --------------------> if use autorelease, release that do not need to be used
//        p = nil;
//        [p run];
        
//        Person *p = [[[Person alloc]init]autorelease];
        
          // Note :
          // 1. don't use loop inside of auto release pool if possible
          // 2. auto release pool can be used inside of loop
          // 3. don't use those objects which consume much memory, if possible
          // 4. autorelease should be used inside of auto release pool
          // 5. auto release pool can be nested
    }
    return 0;
}
