//
//  PlacesDatabase.m
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 10/1/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "PlacesDatabase.h"
#import "PlaceInfo.h"

@implementation PlacesDatabase
static PlacesDatabase *_database;
+ (PlacesDatabase*)database {
    if(_database == nil) {
        _database = [[PlacesDatabase alloc]init];
    }
    return _database;
}

- (id)init {
    if ((self = [super init])) {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"places" ofType:@"sqlite3"];
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (void)close {
    sqlite3_close(_database);
}

- (NSArray *)placesInfos {
    
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id, name, campus FROM places ORDER BY campus";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *nameChars = (char *) sqlite3_column_text(statement, 1);
            char *campusChars = (char *) sqlite3_column_text(statement, 2);
            NSString *name = [[NSString alloc] initWithUTF8String:nameChars];
            NSString *campus = [[NSString alloc] initWithUTF8String:campusChars];
            PlaceInfo *info = [[PlaceInfo alloc]
                                    initWithUniqueId:uniqueId name:name campus:campus];
            [retval addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return retval;
    
}


@end
