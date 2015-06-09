//
//  ViewController.m
//  test_for_lols
//
//  Created by Amanda Chan on 5/31/15.
//  Copyright (c) 2015 Amanda Chan. All rights reserved.
//

#import "ViewController.h"
#import "embeddedclient.h"

#import <NMSSH/NMSSH.h>


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doit:(id)sender {
    
    NMSSHSession *session = [NMSSHSession connectToHost:self.host.text
                                           withUsername:self.username.text];
    
    if (session.isConnected) {
        [session authenticateByPassword:self.password.text];
        
        if (session.isAuthorized) {
            NSLog(@"Authentication succeeded");
        }
    }
    
    NSError *error = nil;
    NSString *response = [session.channel execute:@"ls ~/" error:&error];
    NSLog(@"List of my sites: %@", response);
    
    
  //  BOOL success = [session.channel uploadFile:@"~/index.html" to:@"/var/www/9muses.se/"];

}
@end
