//
//  FKPerson.m
//  02-Properties
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
@implementation FKPerson
-(void) setName : (NSString*) name{
    if ([name length] > 6 || [name length] < 2) {
        NSLog(@"warning : this name is illegal");
        return;
    }else{
        _name = name;
    }
}
-(NSString*) getName{
    return _name;
}
-(void) setAge : (int) age{
    if (_age != age) {
        if (age > 100 || age < 0) {
            NSLog(@"warning : this age is illegal");
            return;
        }else{
            _age = age;
        }
    }
}
-(int) getAge{
    return _age;
}
@end