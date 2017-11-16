//
//  main.m
//  04-DynamicInvoke
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

/**
 // dynamic invoke
 // id == NSObject *
 
 // complier does not know the type of dynamic type
 // the dynamic type will be decided in run time
 
 // It is a universal pointer
 // it can call private method
 // it can call sub class method which base class does not have
 // it may cause run time error
 
 // instancetype also is universal pointer
 // it can decide type in complie time
 // however, id will decide type in run time
 // instancetype only can used as return type
**/

#import <Foundation/Foundation.h>
#import "Person.h"
@interface TestA : NSObject{ // -----------------------------> TestA class
    
}
-(void) print;
@end
@implementation TestA
-(void) print{
    NSLog(@"this is TestA");
}
@end

@interface TestB : NSObject{ // -----------------------------> TestB class
    
}
-(void) print;
@end
@implementation TestB
-(void) print{
    NSLog(@"this is TestB");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id idTest; // ---------------------------------------> create id variable,
        TestA* testA = [[TestA alloc] init];
        TestB* testB = [[TestB alloc] init];
        idTest = testA; // ----------------------------------> assign TestA object to id variable
        [idTest print]; // ----------------------------------> Dynamic Invoke
        idTest = testB; // ----------------------------------> assign TestB object to id variable
        [idTest print]; // ----------------------------------> Dynamic Invoke
        
        
        NSLog(@"=================================");
        Person *p = [[Person alloc] init];
        [p setAge:99];
        
        NSString *str = [[Person alloc] init];
        NSInteger length = [str length];
        NSLog(@"length = %lu", length);
        
        //        id p = [[Person alloc] init];
        
    }
    return 0;
}
