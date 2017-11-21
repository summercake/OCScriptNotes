//
//  main.m
//  22-Block
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
void printRose(){
    printf("this is method\n");
}
int main(int argc, const char * argv[]) {
    
    printRose(); // -----------------> this is a method
    
    void (*roseP)(); // --------------> this is a method pointer
    roseP = printRose;
    roseP();
    
    //block is a data type
    void (^roseBlock)() = ^{ // ------------> no return blockl, roseBlock is a block variable
        printf("this is a block\n");
    };
 
    roseBlock();
    
    roseBlock = ^(int num){ // ---------> a block with an param
        printf("this is a block + %i\n", num);
    };
    
    int (^sumBlock) (int, int); // a block with two params and a return
    sumBlock = ^(int v1, int v2){
        return v1 + v2;
    };
    NSLog(@"%i", sumBlock(10,20));
    
    return 0;
}
