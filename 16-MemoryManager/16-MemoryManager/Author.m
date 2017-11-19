//
//  Author.m
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Author.h"

@implementation Author
-(void)dealloc{
    NSLog(@"%s", __func__);
    [_name release];
    [_icon release];
    [_account release];
    [super dealloc];
}
@end
