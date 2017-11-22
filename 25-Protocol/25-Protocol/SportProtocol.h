//
//  SportProtocol.h
//  25-Protocol
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//å

#import <Foundation/Foundation.h>

@protocol SportProtocol <NSObject>

@required
-(void)playSoccer;
-(void)playBasketball;
-(void)playBaseball;

@optional
-(void)playChess;

@end
