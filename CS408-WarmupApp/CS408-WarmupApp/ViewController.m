//
//  ViewController.m
//  CS408-WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/23/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)authenticateUser:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    usernameLabel.text = @"Username";
    passwordLabel.text = @"Password";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authenticateUser:(id)sender {
    usernameLabel.text = @"Hey Deo";
}
@end
