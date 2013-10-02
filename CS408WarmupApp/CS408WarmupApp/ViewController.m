//
//  ViewController.m
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/27/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "ViewController.h"
#import "PlacesListViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize loginPrompt, usernameInput, passwordInput, myPlacesListVC;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authenticateUser:(id)sender {
    if ([[usernameInput text] isEqualToString:@"tester"] && [[passwordInput text] isEqualToString:@"testing"]) {
        [self performSegueWithIdentifier:@"loggedIn" sender:self];
    }
    else {
    NSString *message = [[NSString alloc] initWithFormat:@"Problem logging in %@", [usernameInput text] ];
    [loginPrompt setText:message];
    }
}
- (IBAction)dismissKeyboard:(id)sender {
    [usernameInput resignFirstResponder];
    [passwordInput resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textfield {
    [textfield resignFirstResponder];
    return YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [myPlacesListVC tableView:tableView cellForRowAtIndexPath:indexPath];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [myPlacesListVC tableView:tableView numberOfRowsInSection:section];
}
@end
