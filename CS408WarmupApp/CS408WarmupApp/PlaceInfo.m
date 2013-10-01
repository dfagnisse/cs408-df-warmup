//
//  PlaceInfo.m
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 10/1/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "PlaceInfo.h"

@implementation PlaceInfo
@synthesize uniqueId = _uniqueId;
@synthesize name = _name;
@synthesize campus = _campus;

- (id)initWithUniqueId:(int)uniqueId name:(NSString *)name campus:(NSString *)campus {
    if ((self = [super init])) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.campus = campus;
    }
    return self;
}
@end
