//
//  PlaceInfo.h
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 10/1/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceInfo : NSObject {
    int _uniqueId;
    NSString *_name;
    NSString *_campus;
}

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *campus;

- (id)initWithUniqueId:(int)uniqueId name:(NSString *)name campus:(NSString *)campus;

@end
