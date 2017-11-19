//
//  Account.m
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Account.h"

@implementation Account
-(void)dealloc{
    [_email release];
    [_pwd release];
    [super dealloc];
}
@end
