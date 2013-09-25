//
//  PlacesController.h
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/25/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Place;

@interface PlacesController : NSObject
@property (nonatomic, copy) NSMutableArray *masterPlacesList;

- (NSUInteger)countOfList;
- (Place *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addPlaceWithCampus:(Place *)place;
@end
