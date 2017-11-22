//
//  main.m
//  27-NSString
//
//  Created by jack on 11/22/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    NSString *str1 = @"jack"; // created by NSString const
//    NSString *str11 = @"jack";
//    NSLog(@"str1 = %p, str1 = %p", str1, str11);
//    
//    NSString *str2 = [[NSString alloc] initWithFormat:@"jack"]; // created by alloc
//    NSString *str22 = [[NSString alloc] initWithFormat:@"jack"]; // created by alloc
//    NSLog(@"str2 = %p, str22 = %p", str2, str22);
//    
//    NSString *str3 = [NSString stringWithFormat:@"jack"]; // created by factory class
//    NSString *str33 = [NSString stringWithFormat:@"jack"]; // created by factory class
//    NSLog(@"str3 = %p, str33 = %p", str3, str33);
//    
//    //Read Local File
//    NSString *path = @"/Volumes/Projects/OCPractice/27-NSString/demo.txt";
//    NSError *error = nil;
//    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error: &error];
//    if (error == nil) {
//        NSLog(@"str = %@", str);
//    }else{
//        NSLog(@"error = %@", [error localizedDescription]);
//    }
//    
//    //Write Local File
//    NSString *word = @"you are right";
//    NSString *pathway = @"/Volumes/Projects/OCPractice/27-NSString/write.txt";
//    BOOL b = [word writeToFile:pathway atomically:YES encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"%i", b);
    
    // Read URL File
    NSString *path = @"file://192.168.33.128/Volumes/Projects/OCPractice/27-NSString/write.txt";
    NSURL *url = [NSURL URLWithString:path];
    NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"str = %@", str);
    
    // Write URL File
    NSString *string = @"you are right!!!";
    NSString *path1 = @"file://192.168.33.128/Volumes/Projects/OCPractice/27-NSString/write.txt";
    NSURL *url1 = [NSURL URLWithString:path1];
    BOOL b = [string writeToURL:url1 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%i", b);
    return 0;
}
