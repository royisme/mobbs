//
//  BBSEngineModel.h
//  mobbs
//
//  Created by Roy Zhu on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "JSONKit.h"
@interface BBSEngineModel : NSObject

@property (nonatomic,retain) NSString *BBS_HOST;
@property (nonatomic,retain) NSURL *BBS_REQ_URL;
@property (nonatomic,retain) NSString *BBS_NAME;
@property (nonatomic,retain) NSString *BBS_API_NAME;
@property (nonatomic,retain) UIImage *BBS_ICON;
@property (nonatomic,retain) NSDictionary *BBS_FORUM;
@property (nonatomic,retain) NSDictionary *BBS_ViewThread;

-(id)init:(NSString*)hostname api:(NSString*)apiurl;
@end
