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
@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectPizzaView;

@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeCardView;

- (IBAction)findRecipesButtonPressed:(id)sender;
- (IBAction)findPizzaRecipesButtonPressed:(id)sender;
- (IBAction)specificPizzaButtonPressed:(id)sender;

- (IBAction)backToWidgetRootButtonPressed:(id)sender;
- (IBAction)backToRecipeTypesButtonPressed:(id)sender;
- (IBAction)backToPizzaTypesButtonPressed:(id)sender;

- (IBAction)widgetCloseButtonPressed:(id)sender;

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
	[self showRecipeCategoriesScreen];
}

- (IBAction)findPizzaRecipesButtonPressed:(id)sender
{
	[self showPizzaTypesScreen];
}

- (IBAction)specificPizzaButtonPressed:(id)sender
{
	[self showFruitPizzaRecipeScreen];
}

- (IBAction)backToWidgetRootButtonPressed:(id)sender
{
	[self showWidgetHomeScreen];
}

- (IBAction)backToRecipeTypesButtonPressed:(id)sender
{
	[self showRecipeCategoriesScreen];
}

- (IBAction)backToPizzaTypesButtonPressed:(id)sender
{
	[self showPizzaTypesScreen];
}

- (IBAction)widgetCloseButtonPressed:(id)sender
{
	[self.view removeFromSuperview];
}

#pragma mark - Screen transition methods

-(void)showWidgetHomeScreen
{
	self.recipeSelectRootView.frame = self.view.frame;
	[self.view.superview addSubview:self.recipeSelectRootView];
	[self.view removeFromSuperview];
	self.view = self.recipeSelectRootView;
}

-(void)showRecipeCategoriesScreen
{
	self.recipeSelectCategoryView.frame = self.view.frame;
	[self.view.superview addSubview:self.recipeSelectCategoryView];
	[self.view removeFromSuperview];
	self.view = self.recipeSelectCategoryView;
}

-(void)showPizzaTypesScreen
{
	self.recipeSelectPizzaView.frame = self.view.frame;
	[self.view.superview addSubview:self.recipeSelectPizzaView];
	[self.view removeFromSuperview];
	self.view = self.recipeSelectPizzaView;
}

-(void)showFruitPizzaRecipeScreen
{
	self.pizzaRecipeCardView.frame = self.view.frame;
	[self.view.superview addSubview:self.pizzaRecipeCardView];
	[self.view removeFromSuperview];
	self.view = self.pizzaRecipeCardView;
}

@end
