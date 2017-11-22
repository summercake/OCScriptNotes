//
//  BodyProtocol.h
//  26-AgentPattern
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BodyProtocol <NSObject>
-(void)feedFood:(Body*)body;
-(void)singSong:(Body*)body;
@end
