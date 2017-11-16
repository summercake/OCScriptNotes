//
//  FKPerson.h
//  01-Class
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifndef FKPerson_h
#define FKPerson_h
@interface FKPerson : NSObject{
    NSString* _name;
    int _age;
}
-(NSString*) getName; // -----------------------------------> getter
-(void) setName : (NSString*) name; // ----------------> setter
-(int) getAge;
-(void) setAge : (int) age;
-(void) say : (NSString*) content;
-(NSString*) info;
+(void) foo; // ----------------------------------------> This is similar as static method in C# and Java
@end


#endif /* FKPerson_h */
