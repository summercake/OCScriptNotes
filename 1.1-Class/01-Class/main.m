//
//  main.m
//  01-Class
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* person = [[FKPerson alloc] init];
        [person say:@"Hello, I love iOS"];
        [person setName: @"Bell"];
        [person setAge: 200];
        NSString* info = [person info];
        NSLog(@"person info is %@", info);
        //[person test];
        [FKPerson foo]; // -----------------------------------------> this is a static method
        
        FKPerson* p = person;
        
    }
    return 0;
}
