//
//  Status.m
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "Status.h"

@implementation Status
-(void)dealloc{
    NSLog(@"%s", __func__);
    [_text release];
    _text = nil;
    [_picture release];
    _picture = nil;
    [_author release];
    _author = nil;
    [_repostStatus release];
    _repostStatus = nil;
    [super dealloc];
}
@end
