//
//  main.m
//  02-Properties
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* person = [[FKPerson alloc] init];
        [person setName: @"Jack"];
        [person setAge: 20];
        NSLog(@"name : %@, age : %i", [person getName], [person getAge]);
    }
    return 0;
}
