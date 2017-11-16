

//
//  Person.h
//  06-DescriptionMethod
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person : NSObject{
    int _age;
    double _height;
    double _weight;
    NSString *_name;
    NSString *tel;
    NSString *email;
}
@property int age;
@property double height, weight;
@property(nonatomic, strong) NSString *name, *tel, *email;

@end