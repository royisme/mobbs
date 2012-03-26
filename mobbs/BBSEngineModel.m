//
//  BBSEngineModel.m
//  mobbs
//
//  Created by Roy Zhu on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BBSEngineModel.h"
//#define REQUEST_URL  @"http://%d/%d";
@implementation BBSEngineModel
@synthesize BBS_API_NAME,BBS_HOST,BBS_FORUM,BBS_ICON,BBS_NAME,BBS_ViewThread,BBS_REQ_URL;
-(id)init:(NSString*)hostname api:(NSString*)apiurl{
    self = [super init];
    self.BBS_HOST = hostname;
    self.BBS_API_NAME = apiurl;
    NSMutableString *url = [NSMutableString stringWithString:@"http://%@/%@"];
    self.BBS_REQ_URL = [NSString stringWithFormat:url,self.BBS_HOST,self.BBS_API_NAME];
   // [url replaceOccurrencesOfString:<#(NSString *)#> withString:<#(NSString *)#> options:<#(NSStringCompareOptions)#> range:<#(NSRange)#>
    //NSString *url = [[NSString alloc]initWithFormat:@"http://%s/%s",self.BBS_HOST,self.BBS_API_NAME];
    //[[NSString alloc]stringWithFormat:REQUEST_URL,self.BBS_HOST,self.BBS_API_NAME];
    NSLog(@"%@",self.BBS_REQ_URL);
    return self;
}
@end
