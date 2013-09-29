//
//  AGHRecipeWidgetViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHRecipeWidgetViewController.h"

@interface AGHRecipeWidgetViewController ()

@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectRootView;
@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectCategoryView;

@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeCardView;

- (IBAction)findRecipesButtonPressed:(id)sender;
- (IBAction)specificPizzaButtonPressed:(id)sender;

@end

@implementation AGHRecipeWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)findRecipesButtonPressed:(id)sender
{
	self.recipeSelectCategoryView.frame = self.view.frame;
	[self.view.superview addSubview:self.recipeSelectCategoryView];
	[self.view removeFromSuperview];
	self.view = self.recipeSelectCategoryView;
}

- (IBAction)specificPizzaButtonPressed:(id)sender
{
	self.pizzaRecipeCardView.frame = self.view.frame;
	[self.view.superview addSubview:self.pizzaRecipeCardView];
	[self.view removeFromSuperview];
	self.view = self.pizzaRecipeCardView;
}

@end
