//
//  Car.h
//  17-@Class
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wheel;
@interface Car : NSObject

//@property(nonatomic, retain)Wheel *wheel; // --------------> this way will cause cycle retain problem
@property(nonatomic, assign)Wheel *wheel; // ----------------> this way can solve cycle retain problem
@end
