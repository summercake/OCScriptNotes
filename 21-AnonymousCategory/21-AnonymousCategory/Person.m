//
//  Person.m
//  21-AnonymousCategory
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"
// all members in the anonymous category is private
@interface Person () // ----------------> this is an anonymous category
{
    int _age; // -----------------------> this is a private member
}
-(void)say; // -------------------------> this is a private method
@end

@implementation Person
-(void)eat{
    NSLog(@"%s", __func__);
}
-(void)say{
    NSLog(@"%i", _age);
}
@end
