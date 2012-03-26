//
//  UserModel.h
//  mobbs
//
//  Created by Roy Zhu on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
enum {
    MALE = 1,
    FEMALE = 0
};
@interface UserModel : NSObject
{
    NSInteger *UID;
    NSString *UserName;
    NSInteger *UserGender;
    NSString *UserTitle;
    NSString *UserHeadImg;
    NSDate *loginTime;
    
}
+(UserModel*)createUser:(NSString *) UID;
@end
