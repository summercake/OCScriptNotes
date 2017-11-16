//
//  main.m
//  07-New
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // new == alloc + init
        Person *p = [[Person alloc] init];
        NSLog(@"%@", p);
        Person *p1 = [[Person alloc] init];
        NSLog(@"%@", p1);
        
        Student *stu = [[Student alloc] init];
        NSLog(@"%@", stu);
        Student *student = [[Student alloc] init];
        NSLog(@"%@", student);
    
    }
    return 0;
}
