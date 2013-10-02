//
//  PlacesDatabase.h
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 10/1/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface PlacesDatabase : NSObject {
    sqlite3 *_database;
}

+ (PlacesDatabase *)database;
- (NSArray *)placesInfos;
@end
