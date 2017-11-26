//
//  main.m
//  36-Copy
//
//  Created by jack on 11/26/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSLog(@"-----------------------------------");
    NSString *s = @"jack";
    NSString *ss = s;
    NSLog(@"s = %p, ss = %p", &s, &ss);
    
    // mutable copy
    NSString *mSrcStr = @"jack";
    NSMutableString *mCpStr = [mSrcStr mutableCopy];
    NSLog(@"srcStr = %@, cpStr = %@", mSrcStr, mCpStr);
    NSLog(@"srcStr = %p, cpStr = %p", &mSrcStr, &mCpStr);
    
    // copy
    NSLog(@"-----------------------------------");
    NSString *srcStr = @"jack";
    NSString *cpStr = [srcStr copy];
    NSLog(@"srcStr = %@, cpStr = %@", srcStr, cpStr);
    NSLog(@"srcStr = %p, cpStr = %p", &srcStr, &cpStr);
    
    return 0;
}
