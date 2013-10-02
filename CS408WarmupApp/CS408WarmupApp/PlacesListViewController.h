//
//  PlacesListViewController.h
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 10/1/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlacesListViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *placesInfos;

@end
