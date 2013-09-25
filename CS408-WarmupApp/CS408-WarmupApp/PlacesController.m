//
//  PlacesController.m
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/25/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "PlacesController.h"
#import "Place.h"

@interface PlacesController ()
- (void)initializeDefaultDataList;
@end

@implementation PlacesController

NSString *defaultPlaceName = @"Great Hall";
NSString *defaultCampus = @"West";
- (void)initializeDefaultDataList {
    NSMutableArray *placeList = [[NSMutableArray alloc] init];
    self.masterPlacesList = placeList;
    Place *place;
    place = [[Place alloc] initPlace:defaultPlaceName campus:defaultCampus];
    [self addPlaceWithCampus:place];
}

- (void)setMasterPlacesList:(NSMutableArray *)newList {
    if (_masterPlacesList != newList) {
        _masterPlacesList = [newList mutableCopy];
    }
}

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (NSUInteger)countOfList {
    return [self.masterPlacesList count];
}

- (Place *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterPlacesList objectAtIndex:theIndex];
}

- (void)addPlaceWithCampus:(Place *)place {
    [self.masterPlacesList addObject:place];
}

@end
