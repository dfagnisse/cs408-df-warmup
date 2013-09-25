//
//  Place.m
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/25/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "Place.h"

@implementation Place
-(id)initPlace:(NSString *)name campus:(NSString *)campus {
    self = [super init];
    if(self) {
        _name = name;
        _campus = campus;
        return self;
    }
    return nil;
}
@end
