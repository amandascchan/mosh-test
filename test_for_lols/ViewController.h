//
//  ViewController.h
//  test_for_lols
//
//  Created by Amanda Chan on 5/31/15.
//  Copyright (c) 2015 Amanda Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)doit:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *host;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *username;


@end

