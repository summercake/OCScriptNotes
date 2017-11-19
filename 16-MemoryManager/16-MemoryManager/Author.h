//
//  Author.h
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
@interface Author : NSObject
@property(nonatomic, retain)NSString *name;
@property(nonatomic, retain)NSString *icon;
@property(nonatomic, assign, getter=isVIP)BOOL vip;
@property(nonatomic, retain)Account *account;
@property(nonatomic, assign)MyDate birthday;
@end
