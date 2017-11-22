//
//  Body.h
//  26-AgentPattern
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Nanny.h"
#import "Student.h"
@interface Body : NSObject
@property(nonatomic, assign)int hungry;
@property(nonatomic, assign)int sleep;
//@property(nonatomic, strong)Nanny *nanny;
//@property(nonatomic, strong)Student *stu;
@property(nonatomic, strong)id nanny;
-(void)food;
-(void)sleepy;
@end
