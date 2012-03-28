//
//  HttpHelper.m
//  mobbs
//
//  Created by Roy Zhu on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HttpHelper.h"
@interface HttpHelper(private)
-(void)setHeader;
@end
@implementation HttpHelper
@synthesize cookies = _cookies;
@synthesize params = _params;
@synthesize requestHeader = _requestHeader;
@synthesize type = _type;
-(id)init{
    self = [super init];
    if (self) {
        Request = [[ASIHTTPRequest alloc]init];
    }
    return self;
}
-(void)request:(NSURL *)url{
    [Request setURL:url];
    Request.requestMethod = @"GET"; 
    
}
-(NSData*)getResponse{
    return [Request responseData];
}

-(void)setHeader{
    if ([self.requestHeader count] > 0) {
        NSEnumerator *keyEnum = [self.requestHeader keyEnumerator];
        for (NSString *key in keyEnum) {
            [Request addRequestHeader:key value:[self.requestHeader valueForKey:key]];
        }
    }
}
@end
