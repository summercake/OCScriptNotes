//
//  Person.m
//  15-Property
//
//  Created by jack on 11/18/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Person.h"

@implementation Person
//-(Room*)room{
//    
//    return _room;
//}
//-(void)setRoom:(Room *)room{
//    if (_room != room) {
//        [_room release];
//        _room = [room retain];
//    }
//}
//-(Car*)car{
//    return _car;
//}
//-(void)setCar:(Car *)car{
//    if (_car != car) {
//        [_car release];
//        _car = [car retain];
//    }
//}
//-(Dog*)dog{
//    return _dog;
//}
//-(void)setDog:(Dog *)dog{
//    if (_dog != dog) {
//        [_dog release];
//        _dog = [dog retain];
//    }
//}
-(void)dealloc {
    [_dog release];
    [_car release];
    [_room release];
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end
