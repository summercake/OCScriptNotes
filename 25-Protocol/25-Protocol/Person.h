//
//  Person.h
//  25-Protocol
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wife.h"
#import "SportProtocol.h"

@interface Person : NSObject <SportProtocol>
@property(nonatomic, strong) Wife<WifeCondition> *wife;
-(void)show;
@end
