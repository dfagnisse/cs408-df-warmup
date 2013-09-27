//
//  ViewController.h
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/23/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *loginPrompt;
@property (weak, nonatomic) IBOutlet UITextField *usernameInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;

- (IBAction)authenticateUser:(id)sender;

@end
