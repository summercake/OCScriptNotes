//
//  main.m
//  23-typedef
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
int sum(int v1, int v2){
    return v1 + v2;
}
int minus(int v1, int v2){
    return v1 - v2;
}

typedef int (*calculate)(int, int);

typedef int (^calculateBlock)(int, int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int (*sumP)(int, int);
        sumP = sum;
        NSLog(@"sumP = %i", sumP(20,10));
    
        int (*minusP)(int, int);
        minusP = minus;
        NSLog(@"minusP = %i", minusP(20,10));
        
        calculate sumC = sum;
        NSLog(@"sumC = %i", sumC(20,10));
        
        calculate minusC = minus;
        NSLog(@"minusC = %i", minusC(20,10));

        calculateBlock sumB = ^(int v1, int v2){
            return v1 + v2;
        };
        NSLog(@"sumBlock = %i", sumB(20,10));
        
        calculateBlock minusB = ^(int v1, int v2){
            return v1 - v2;
        };
        NSLog(@"sumBlock = %i", minusB(20,10));
        
        
    }
    return 0;
}
