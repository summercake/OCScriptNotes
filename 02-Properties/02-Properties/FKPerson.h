//
//  FKPerson.h
//  02-Properties
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifndef FKPerson_h
#define FKPerson_h
@interface FKPerson : NSObject{
    @private
    NSString* _name;
    int _age;
}
-(void) setName : (NSString*) name;
-(NSString*) getName;
-(void) setAge : (int) age;
-(int) getAge;
@end
#endif /* FKPerson_h */
