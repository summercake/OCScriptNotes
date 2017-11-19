//
//  main.m
//  09-ClassFactory
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *pp = [[Person alloc] init]; // ----------------------> create object in normal way
        Person *p = [Person person]; // -----------------------------> create object with using class factory
        NSLog(@"%i", p.age);
        NSLog(@"%i", pp.age);
        
        Student *stu = [Student person];
        stu.age = 50;
        NSLog(@"age=%i", stu.age);
        stu.num = 15;
        NSLog(@"%i", stu.num);
        
        Student *stu1 = [Student personWithAge:30];
        stu1.num = 18;
        NSLog(@"%i + %i", stu1.age, stu1.num);
    }
    return 0;
}
