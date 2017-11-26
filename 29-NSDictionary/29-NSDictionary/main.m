//
//  main.m
//  29-NSDictionary
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // create dictionary
    NSLog(@"--------------------------------------");
    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"jack" forKey:@"name"];
    NSString *name = [dict objectForKey:@"name"];
    NSLog(@"%@", name);
    
    NSLog(@"--------------------------------------");
    NSDictionary *dic = [NSDictionary dictionaryWithObjects:@[@"jack", @"32", @"185"] forKeys: @[@"name", @"age", @"height"]];
    NSLog(@"%@, %@, %@",[dic objectForKey:@"name"], [dic objectForKey:@"age"], [dic objectForKey:@"height"]);
    
    NSLog(@"--------------------------------------");
    NSDictionary *d = @{@"name":@"jack", @"age":@"30", @"height":@"185"};
    NSLog(@"%@, %@, %@",[d objectForKey:@"name"], [d objectForKey:@"age"], [d objectForKey:@"height"]);
    
    NSLog(@"---------------for-------------------");
    for (int i = 0; i < d.count; i++) {
        NSArray *arrKeys = [d allKeys];
        NSLog(@"%@", arrKeys[i]);
        NSString *key = arrKeys[i];
        NSString *value = d[key];
        NSLog(@"key = %@, value = %@", key, value);
    }
    
    NSLog(@"----------------forin------------------");
    for (NSString *key in d) {
        NSLog(@"key = %@, value = %@", key, d[key]);
    }
    
    NSLog(@"----------------block------------------");
    [d enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"key = %@, value = %@", key ,obj);
    }];
    
    // write dictionary to file
    NSLog(@"----------------write------------------");
    [d writeToFile:@"/Users/jack/Desktop/demo.plist" atomically:YES];
    
    // read file to dictionary
    NSLog(@"----------------read------------------");
    NSDictionary *newDic = [NSDictionary dictionaryWithContentsOfFile:@"/Users/jack/Desktop/demo.plist"];
    NSLog(@"%@", newDic);
    
    // mutable dictionary
    NSLog(@"----------------mutable------------------");
    NSMutableDictionary *mDict = [NSMutableDictionary dictionary];
    NSLog(@"%@", mDict);
    [mDict setObject:@"mike" forKey:@"nickname"];
    NSLog(@"%@", mDict);
    [mDict setValuesForKeysWithDictionary:d];
    NSLog(@"%@",mDict);
    NSLog(@"name = %@", mDict[@"name"]);
    [mDict removeObjectForKey:@"name"];
    NSLog(@"%@",mDict);
    [mDict setObject:@"88" forKey:@"age"];
    NSLog(@"%@",mDict);
    
    return 0;
}
