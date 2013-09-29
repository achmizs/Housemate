//
//  AGHKitchenViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHKitchenViewController.h"
#import "AGHRecipeWidgetViewController.h"

@interface AGHKitchenViewController ()

@property (nonatomic, strong) AGHRecipeWidgetViewController* recipeWidgetViewController;

- (IBAction)homeButtonPressed:(id)sender;
- (IBAction)mediaButtonPressed:(id)sender;

- (IBAction)recipeWidgetDrawerButtonPressed:(id)sender;

@end

@implementation AGHKitchenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)homeButtonPressed:(id)sender
{
	[self.delegate switchToHome];
}

- (IBAction)mediaButtonPressed:(id)sender
{
	[self.delegate showMediaView];
}

- (IBAction)recipeWidgetDrawerButtonPressed:(id)sender
{
	if(self.recipeWidgetViewController == nil)
		self.recipeWidgetViewController = [[AGHRecipeWidgetViewController alloc] initWithNibName:@"AGHRecipeWidgetViewController" bundle:nil];
	
	[self.view addSubview:self.recipeWidgetViewController.view];
	
	[((NSButton*)sender) setImage:[NSImage imageNamed:@"recipe_widget_drawer_button_selected.png"]];
}
@end
