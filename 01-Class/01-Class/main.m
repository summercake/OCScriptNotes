//
//  main.m
//  01-Class
//
//  Created by jack on 11/14/17.
//  Copyright © 2017 OCNotes. All rights reserved.
//

#import <Foundation/Foundation.h>

// Define a class
// This part is about properties
@interface IPhone : NSObject // -------------------> Self defined class can be instantiated, after inheriting NSObject
{
    @public
    float _model;
    int _cpu;
    double _size;
    int _color;
}
@end

// This part is about class method
@implementation IPhone


@end


int main(int argc, const char * argv[]) {
    
    IPhone *p = [IPhone new]; // -----------------> use pointer to instatiate an object
    p->_model = 4; // -----------------> assign value to an property
    p->_cpu = 1;
    p->_size = 4;
    p->_color = 5;
    
    NSLog(@"model : %f, cpu : %i, size : %f, color : %i",p->_model, p->_cpu, p->_size, p->_color);
    return 0;
}
