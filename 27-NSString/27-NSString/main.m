//
//  main.m
//  27-NSString
//
//  Created by jack on 11/22/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
        NSString *str1 = @"jack"; // created by NSString const
        NSString *str11 = @"jack";
        NSLog(@"str1 = %p, str1 = %p", str1, str11);
    
        NSString *str2 = [[NSString alloc] initWithFormat:@"jack"]; // created by alloc
        NSString *str22 = [[NSString alloc] initWithFormat:@"jack"]; // created by alloc
        NSLog(@"str2 = %p, str22 = %p", str2, str22);
    
        NSString *str3 = [NSString stringWithFormat:@"jack"]; // created by factory class
        NSString *str33 = [NSString stringWithFormat:@"jack"]; // created by factory class
        NSLog(@"str3 = %p, str33 = %p", str3, str33);
    
        //Read Local File
        NSString *path = @"/Volumes/Projects/OCPractice/27-NSString/demo.txt";
        NSError *error = nil;
        NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error: &error];
        if (error == nil) {
            NSLog(@"str = %@", str);
        }else{
            NSLog(@"error = %@", [error localizedDescription]);
        }
    
        //Write Local File
        NSString *word = @"you are right";
        NSString *pathway = @"/Volumes/Projects/OCPractice/27-NSString/write.txt";
        BOOL b = [word writeToFile:pathway atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%i", b);
    
     Read URL File
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
    
    // Compare the content of two strings
    NSString *str1 = @"abc";
    NSString *str2 = @"abc";
    BOOL flag = [str1 isEqualToString:str2];
    
    // Compare the address of two strings
    flag = (str1 == str2);
    NSLog(@"flag = %i", flag);
    
    // Compare the size of two strings
    switch ([str1 compare:str2]) {
        case NSOrderedSame:
            NSLog(@"str1 equal str2");
            break;
        case NSOrderedAscending:
            NSLog(@"str1 smaller than str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 bigger than str2");
            break;
        default:
            break;
    };
    
    // Compare the size of two strings, with ignoring case sensitive
    switch ([str1 compare:str2]) {
        case NSOrderedSame:
            NSLog(@"str1 equal str2");
            break;
        case NSOrderedAscending:
            NSLog(@"str1 smaller than str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 bigger than str2");
            break;
        default:
            break;
    };
    
    // string search
    NSString *stri = @"http://www.google.com";
    // search with starting
    if ([stri hasPrefix:@"http://"]) {
        NSLog(@"this is a url");
    }else{
        NSLog(@"this is not a url");
    }
    // search with ending
    if ([stri hasSuffix:@".com"]) {
        NSLog(@"this is a url");
    }else{
        NSLog(@"this is not a url");
    }
    // search with containing
    NSRange range = [stri rangeOfString:@"google"];
    NSLog(@"location = %lu, length = %lu", range.location, range.length);
    
    // substring 1
    NSString * st = @"<head>superman</head>";
    NSRange r = {6, 8};
//    r.location = 6;
//    r.length = 8;
//    NSRange range1 = NSMakeRange(6, 8);
    NSString *newSt = [st substringWithRange:r];
    NSLog(@"%@", newSt);
    
     substring 2
    NSString * st = @"<head>superman</head>";
    NSUInteger location = [st rangeOfString:@">"].location + 1;
    NSUInteger length = [st rangeOfString:@"<" options:NSBackwardsSearch].location - location;
    NSLog(@"location = %lu, length = %lu", location, length);
    NSRange range = NSMakeRange(location, length);
    NSString *str = [st substringWithRange:range];
    NSLog(@"str = %@", str);
    
     string replace
    NSString *str = @"  http: & & www.google.com  ";
    NSLog(@"%@", str);
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    NSString *noSpace = [str stringByTrimmingCharactersInSet:set];
    NSLog(@"%@", noSpace);
    noSpace = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"%@", noSpace);
    NSString *newStr = [noSpace stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"%@", newStr);
    
    // path
    NSString *path = @"/User/jack/Desktop/jack.txt";
    if ([path isAbsolutePath]) {
        NSLog(@"this is absolute path");
    }else{
        NSLog(@"this is relative path");
    }
    // get last directory in a path
    NSString *lastPath = [path lastPathComponent];
    NSLog(@"%@", lastPath);
    
    // add a directory to a path
    NSString *addLast = [path stringByAppendingPathComponent:@"xmg"];
    NSLog(@"%@", addLast);
    
    // del last directory in a path
    NSString *delLast = [addLast stringByDeletingLastPathComponent];
    NSLog(@"%@", delLast);
    
    // get file extension in a path
    NSString *ext = [path pathExtension];
    NSLog(@"%@", ext);
    
    // delete file extension in a path
    NSString *delExt = [path stringByDeletingPathExtension];
    NSLog(@"%@", delExt);
    
    // add file extension in a path
    NSString *addExt = [delExt stringByAppendingPathExtension:@"txt"];
    NSLog(@"%@", addExt);
    
    // Uppercase
    NSString *upper = [path uppercaseString];
    NSLog(@"%@", upper);
    
    // lowercase
    NSString *lower = [path lowercaseString];
    NSLog(@"%@", lower);
    
    // capitalize
    NSString *capitalize = [path capitalizedString];
    NSLog(@"%@", capitalize);
    
    // string to int
    NSString *num1 = @"5";
    NSString *num2 = @"8";
    NSLog(@"%i", [num1 intValue] + [num2 intValue]);
    
    // C string to OC string
    char *cStr = "jack";
    NSString *str = [NSString stringWithUTF8String:cStr];
    NSLog(@"str = %@", str);
    
    NSString *newStr = @"Mike";
    char *cStr2 = [newStr UTF8String];
    NSLog(@"%s", cStr2);
    
    // mutable string
    NSMutableString *mstr = [NSMutableString string];
    [mstr appendString:@"mutable"];
    NSLog(@"%@", mstr);
    [mstr appendFormat:@" age is %i", 10];
    NSLog(@"%@", mstr);
    NSRange range = [mstr rangeOfString:@"mutable"];
    [mstr deleteCharactersInRange:range];
    NSLog(@"mstr = %@", mstr);
    NSRange ran = [mstr rangeOfString:@"age"];
    [mstr insertString:@"love" atIndex:range.location];
    NSLog(@"%@", mstr);
    
    return 0;
    
    
}
