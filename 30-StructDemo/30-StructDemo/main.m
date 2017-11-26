//
//  main.m
//  30-StructDemo
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //Apple recommend developer to use CG struct, not recommend with NS struct
    
    // coordinate
    CGPoint point = NSMakePoint(10, 20);
    // size
    CGSize size = NSMakeSize(100, 50);
    // coordinate & size
    CGRect rect = NSMakeRect(100, 100, 100, 100);
    
    
    return 0;
}
