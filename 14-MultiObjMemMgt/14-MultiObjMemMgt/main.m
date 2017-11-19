//
//  main.m
//  14-MultiObjMemMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc]init];
        Room * r = [[Room alloc]init];
        r.num = 888;
        p1.room = r;
        
        [r release];
        NSLog(@"----------");
        [p1 release];
        
    }
    return 0;
}
