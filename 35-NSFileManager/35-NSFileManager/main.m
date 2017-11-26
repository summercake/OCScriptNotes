//
//  main.m
//  35-NSFileManager
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // verify whether file exist
    NSString *path = @"/Users/jack/Desktop/demo.plist";
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL d = NO;
    BOOL b = [fm fileExistsAtPath:path isDirectory:&d];
    NSLog(@"flag = %i, d = %i", b, d);
    
    // to get file attributes
    NSDictionary *dict = [fm attributesOfItemAtPath:path error:nil];
    NSLog(@"%@", dict);
    
    // to get file name in a directory
    NSArray *arrFiles = [fm contentsOfDirectoryAtPath:@"/Users/jack/Desktop/" error:nil];
    NSLog(@"%@", arrFiles);
    
    // to get sub directory in a directory
    NSArray *arrDirs = [fm subpathsOfDirectoryAtPath:@"/Users/jack/Desktop/" error:nil];
    NSLog(@"%@", arrDirs);
    
    // create file
    NSString *s = @"you a beautiful";
    NSData *data = [s dataUsingEncoding:NSUTF8StringEncoding];
    [fm createFileAtPath:@"/Users/jack/Desktop/test.txt" contents:data attributes:nil];
    // create directory
    [fm createDirectoryAtPath:@"/Users/jack/Desktop/demo" withIntermediateDirectories:YES attributes:nil error:nil];
    return 0;
}
