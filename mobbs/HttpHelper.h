//
//  HttpHelper.h
//  mobbs
//
//  Created by Roy Zhu on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
@interface HttpHelper : NSObject{
    ASIHTTPRequest * Request;
    NSHTTPCookie *Cookie;
    enum{
        HTTP_TYPE_GET = 1,
        HTTP_TYPE_POST = 2,
        HTTP_TYPE_UPLOAD = 3
    }; 
    
    
}
@property (nonatomic) NSMutableDictionary *cookies;
@property (nonatomic) NSMutableDictionary * params;
@property (nonatomic) NSInteger *type;
@property (nonatomic) NSDictionary *requestHeader;

-(id)init;
-(void)request:(NSURL *)url method:(NSString *)requestMethod ;
-(NSData *)getResponse;
@end
