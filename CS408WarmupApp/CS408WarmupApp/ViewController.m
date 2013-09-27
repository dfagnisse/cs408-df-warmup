//
//  ViewController.m
//  CS408WarmupApp
//
//  Created by Dagbedji Fagnisse on 9/27/13.
//  Copyright (c) 2013 Dagbedji Fagnisse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize loginPrompt, usernameInput, passwordInput;

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
    NSString *message = [[NSString alloc] initWithFormat:@"Hello %@", [usernameInput text] ];
    [loginPrompt setText:message];
}
- (IBAction)dismissKeyboard:(id)sender {
    [usernameInput resignFirstResponder];
    [passwordInput resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textfield {
    [textfield resignFirstResponder];
    return YES;
}
@end
