//
//  main.m
//  32-NSValue
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    typedef struct{
//        int age;
//        char *name;
//        double _height;
//    }Person;
//    
//    Person p ={30, "jack", 1.81};
//    
//    
//    NSArray *arr = @{p};
    
    CGPoint point = NSMakePoint(10, 20);
    NSValue * value = [NSValue valueWithPoint:point];
    NSArray *arr = @[value];
    NSLog(@"%@", arr);
    
    NSLog(@"-----------------------");
    typedef struct{
        int age;
        char *name;
        double _height;
    }Person;
    
    Person p ={30, "jack", 1.81};
    
    NSValue *v = [NSValue valueWithBytes:&p objCType:@encode(Person)];
    
    NSArray *array = @[v];
    
    NSLog(@"%@",array);
    Person pe;
    [v getValue:&pe];
    NSLog(@"age = %i, name = %s, height = %f", pe.age, pe.name, pe._height);
    
    return 0;
}
