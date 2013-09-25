//
//  Place.h
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/25/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *campus;

-(id)initPlace:(NSString *)name campus:(NSString *)campus;
@end
