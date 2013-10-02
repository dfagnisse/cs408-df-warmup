//
//  ViewController.h
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/27/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlacesListViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *loginPrompt;
@property (weak, nonatomic) IBOutlet UITextField *usernameInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;
@property (strong, nonatomic) PlacesListViewController *myPlacesListVC;

- (IBAction)authenticateUser:(id)sender;

@end
