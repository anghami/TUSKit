//
//  TUSUploadStore.m
//
//  Created by Findyr
//  Copyright (c) 2016 Findyr. All rights reserved.

#import "TUSUploadStore.h"
#import "TUSResumableUpload.h"
#import "NSString+Utils.h"

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
    return [NSString stringWithFormat:@"%@-%f", [NSString randomStringOfLength:15], [[NSDate date]timeIntervalSince1970]];
}
@end
