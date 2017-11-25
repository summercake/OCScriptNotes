//
//  main.m
//  28-NSArray
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    NSArray *arr = [NSArray arrayWithObjects:@"jack",@"mike",@"nancy", nil];
    NSLog(@"%@", arr);
    
    Person *p = [[Person alloc]init];
    Person *p1 = [[Person alloc]init];
    Person *p2 = [[Person alloc]init];
    Person *p3 = [[Person alloc]init];
    Person *p4 = [[Person alloc]init];
    Person *p5 = [[Person alloc]init];
    NSObject *obj = [[NSObject alloc]init];
    NSArray *ar = [NSArray arrayWithObjects: @"jack", p, obj, nil];
    NSLog(@"%@", ar);
    NSLog(@"%@", [ar lastObject]);
    NSLog(@"%@", [ar firstObject]);
    NSLog(@"%lu", [ar count]);
    NSLog(@"%i", [ar containsObject:@"jack"]);
    NSLog(@"%@", arr[1]);
    NSLog(@"----------------------------");
    
    // iterator
    NSArray *arra = @[@"jack", @"mike", @"nancy", @"john"];
    for (NSObject *obj in arra) {
        NSLog(@"%@", obj);
    }
    NSLog(@"-----------------------------");
    for (int i=0; i<arra.count; i++) {
        NSLog(@"%@", arra[i]);
    }
    NSLog(@"-----------------------------");
    [arra enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"obj = %@, idx = %lu", obj, idx);
    }];
    
    NSLog(@"-----------------------------");
    NSArray *array = @[p1,p2,p3,p4,p5];
    [array makeObjectsPerformSelector:@selector(say)];
    
    // sort
    NSLog(@"-----------------------------");
    NSArray *intArr = @[@10, @70, @90, @40, @3];
    NSLog(@"before sorting %@", intArr);
    NSArray *sortedArr = [intArr sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"after sorting %@", sortedArr);
    
    NSLog(@"-----------------------------");
    p1.age = 10;
    p2.age = 3124;
    p3.age = 1324;
    p4.age = 12;
    p5.age = 2133;
    NSLog(@"before sorting %@", array);
    NSArray *sortedArray = [array sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Person *obj1, Person *obj2) {
//            NSLog(@"obj1 = %@, obj2 = %@", obj1, obj2);
        return obj1.age > obj2.age;
    }];
    NSLog(@"after sorting %@", sortedArray);
    
    // Convert NSArray to NSString
    NSLog(@"----------------------------");
    NSArray *strArray = @[@"jack", @"mike", @"john"];
    NSString *str = [strArray componentsJoinedByString:@"-"];
    NSLog(@" str = %@", str);
    
    // write NSArray to file
    NSLog(@"----------------------------");
    BOOL flag = [arr writeToFile:@"/Users/jack/Desktop/demo.txt" atomically:YES];
    NSLog(@"flag = %i", flag);
    
    // mutable array
    NSLog(@"----------------------------");
    NSMutableArray *arrM = [NSMutableArray array];
    [arrM addObject:@"jack"];
    [arrM addObject:@"Mike"];
    [arrM addObject:@"John"];
    [arrM addObject:@[@"Macy", @"Dawn"]];
    [arrM addObjectsFromArray:@[@"Nina", @"Sam"]];
    NSLog(@"%@", arrM);
    NSRange range = NSMakeRange(2, 2);
    NSIndexSet *set = [NSIndexSet indexSetWithIndexesInRange:range];
    [arrM insertObjects:@[@"A", @"B"] atIndexes:set];
    NSLog(@"%@", arrM);
    [arrM removeObjectAtIndex:0];
    NSLog(@"%@", arrM);
    [arrM removeLastObject];
    NSLog(@"%@", arrM);
    [arrM removeObject:@"A"];
    NSLog(@"%@", arrM);
    [arrM replaceObjectAtIndex:1 withObject:@"M"];
    NSLog(@"%@", arrM);
    NSLog(@"%@",[arrM objectAtIndex:3]);
    NSLog(@"%@", arrM[3]);
    
    
    
    
    
    
    return 0;
}
