//
//  Status.h
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Status : NSObject
@property(nonatomic, retain)NSString *text;
@property(nonatomic, retain)NSString *picture;
@property(nonatomic, assign)MyDate createTime;
@property(nonatomic, retain)Author *author;
@property(nonatomic, assign)int commentCount;
@property(nonatomic, assign)int retweetCount;
@property(nonatomic, assign)int likeCount;
@property(nonatomic, retain)Status *repostStatus;
@end
