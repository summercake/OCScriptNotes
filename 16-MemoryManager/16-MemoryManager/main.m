//
//  main.m
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Status.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. create account one
        Account *account = [[Account alloc] init];
        account.email = @"jack@gmail.com";
        account.pwd = @"1234";
        account.regTime = (MyDate){2017,11,18,19,26,22};
        
        // 2. set user info
        Author *author = [[Author alloc] init];
        author.name = @"jack";
        author.icon = @"jack.png";
        author.account = account;
        author.birthday = (MyDate){1988,12,14,18,24,25};
        
        // 3. publish content
        Status *status = [[Status alloc] init];
        status.text = @"popcorn is better than others";
        status.picture = @"phone.png";
        status.createTime = (MyDate){2017,12,18,19,26,22};
        status.author = author;
        status.commentCount = 100;
        status.retweetCount = 90;
        status.likeCount = 200;
        
        // 1. create account two
        Account *account1 = [[Account alloc] init];
        account1.email = @"mike@gmail.com";
        account1.pwd = @"1234";
        account1.regTime = (MyDate){2016,11,18,19,26,22};
        
        // 2. set user info
        Author *author1 = [[Author alloc] init];
        author1.name = @"mike";
        author1.icon = @"mike.png";
        author1.account = account1;
        author1.birthday = (MyDate){1986,12,14,18,24,25};
        
        // 3. publish content
        Status *status1 = [[Status alloc] init];
        status1.text = @"popcorn is better than others";
        status1.picture = @"phone.png";
        status1.createTime = (MyDate){2016,12,18,19,26,22};
        status1.author = author1;
        status1.commentCount = 100;
        status1.retweetCount = 90;
        status1.likeCount = 200;

        
    }
    return 0;
}
