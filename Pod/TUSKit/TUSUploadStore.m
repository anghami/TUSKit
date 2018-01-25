//
//  TUSUploadStore.m
//
//  Created by Findyr
//  Copyright (c) 2016 Findyr. All rights reserved.

#import "TUSUploadStore.h"
#import "TUSResumableUpload.h"

@interface TUSUploadStore ()
@end


@implementation TUSUploadStore


-(TUSResumableUpload *) loadUploadWithIdentifier:(NSString *)uploadId delegate:(id<TUSResumableUploadDelegate>)delegate
{
    @throw [NSException exceptionWithName:@"Not Implemented" reason:@"TUSUploadStore is an abstract base class and does not implement any methods" userInfo:nil];
}

-(BOOL)saveUpload:(TUSResumableUpload *)upload
{
    @throw [NSException exceptionWithName:@"Not Implemented" reason:@"TUSUploadStore is an abstract base class and does not implement any methods" userInfo:nil];
}

-(BOOL)removeUploadWithIdentifier:(NSString *)uploadIdentifier
{
    @throw [NSException exceptionWithName:@"Not Implemented" reason:@"TUSUploadStore is an abstract base class and does not implement any methods" userInfo:nil];
}

-(NSArray <NSString *>*)allUploadIdentifiers
{
    @throw [NSException exceptionWithName:@"Not Implemented" reason:@"TUSUploadStore is an abstract base class and does not implement any methods" userInfo:nil];
}

-(BOOL)containsUploadWithIdentifier:(NSString *)uploadId
{
    @throw [NSException exceptionWithName:@"Not Implemented" reason:@"TUSUploadStore is an abstract base class and does not implement any methods" userInfo:nil];
}

-(NSString *)generateUploadId
{
    while(1) {
        NSUUID *uuid = [[NSUUID alloc] init];
        NSString * uploadString = [NSString stringWithFormat:@"%@%f%d", uuid.UUIDString, [[NSDate date]timeIntervalSince1970], arc4random()%10];
        if(![self containsUploadWithIdentifier:uploadString])
            return uploadString;
    }
}
@end
