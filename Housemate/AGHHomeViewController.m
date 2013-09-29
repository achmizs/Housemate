//
//  AGHHomeViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHHomeViewController.h"

@interface AGHHomeViewController ()

- (IBAction)mediaButtonPressed:(id)sender;
- (IBAction)bathButtonPressed:(id)sender;
- (IBAction)kitchenButtonPressed:(id)sender;
- (IBAction)garageButtonPressed:(id)sender;
- (IBAction)settingsButtonPressed:(id)sender;

@end

@implementation AGHHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)mediaButtonPressed:(id)sender {
}

- (IBAction)bathButtonPressed:(id)sender {
}

- (IBAction)kitchenButtonPressed:(id)sender
{
	[self.delegate switchToKitchen];
}

- (IBAction)garageButtonPressed:(id)sender {
}

- (IBAction)settingsButtonPressed:(id)sender {
}
@end
