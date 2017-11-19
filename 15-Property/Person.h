//
//  Person.h
//  15-Property
//
//  Created by jack on 11/18/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Room.h"
#import "Dog.h"
@interface Person : NSObject
{
//    Room *_room;
//    Car *_car;
//    Dog *_dog;
}
@property(retain) Room *room;
@property(retain) Room *car;
@property(retain) Room *dog;

//-(void)setRoom:(Room*)room;
//-(void)setCar:(Car*)room;
//-(void)setDog:(Dog*)room;
//-(Room*)room;
//-(Car*)car;
//-(Dog*)dog;


// if use readwrite, it will generate getter and setter methods
// if use assign, it will generate getter and setter methods (default)
// if use readonly, it will only generate a getter method
// if use retain, it will generate memory management code in setter method
// if use nonatomic, it will generate getter and setter methods with high performance (mutiple threads)
// if use atomic, it will generate getter and setter methods with low performance (single thread)
@property(getter=getAge, setter=setAge:) int age; // -----> rewrite getter & setter name
@end
