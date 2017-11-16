//
//  main.m
//  06-DescriptionMethod
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:18];
        [p setName:@"jack"];
        [p setHeight:1.88];
        [p setWeight: 160];
        [p setTel:@"123456789"];
        [p setEmail:@"jack@abc.com"];
        
        NSLog(@"name=%@, age=%i, height=%f, weight=%f, tel=%@, email=%@", [p name], [p age], [p height], [p weight], [p tel], [p email]);
        NSLog(@"========================================================================");
        NSLog(@"person = %p", p); // ----------------------------------> To get object address
        NSLog(@"person = %p", [Person class]); // ---------------------> To get class type
        NSLog(@"%@", [p description]);
		    }
    return 0;
}
