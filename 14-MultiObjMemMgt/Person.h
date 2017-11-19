//
//  Person.h
//  14-MultiObjMemMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
@interface Person : NSObject{
    Room *_room;
}
-(void)setRoom:(Room *)room;
-(Room*)room;
@end
