//
//  AGHMediaViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/29/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHMediaViewController.h"

@interface AGHMediaViewController ()

-(IBAction)backToKitchenButtonPressed:(id)sender;
- (IBAction)musicButtonPressed:(id)sender;

@end

@implementation AGHMediaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(IBAction)backToKitchenButtonPressed:(id)sender
{
	[self.delegate backToKitchen];
}

- (IBAction)musicButtonPressed:(id)sender
{
	[self.delegate spawnMusicWidgetInCurrentScreen];
	[self.delegate backToKitchen];
}

@end
