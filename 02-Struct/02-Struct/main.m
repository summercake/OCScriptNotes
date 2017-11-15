//
//  main.m
//  02-Struct
//
//  Created by jack on 11/14/17.
//  Copyright © 2017 OCNotes. All rights reserved.
//

#import <Foundation/Foundation.h>
// define a struct
// the base of class is struct in OC
struct Person{
    char *name;
    int age;
};

int main(int argc, const char * argv[]) {
    
    // how to use a struct
    struct Person p;
    struct Person *ip = &p;
    ip->age = 10;
    ip->name = "John";
    
    // assign values to variable directly
    struct Person sp = {"jack", 30};
    
    // assign values in a normal way
    struct Person *sip = &sp;
    (*sip).age = 30;
    (*sip).name = "Jack";
    sip->age = 40;
    sip->name = "Mike";
    NSLog(@"name : %s, age : %i", sip->name, sip->age);
    return 0;
}
