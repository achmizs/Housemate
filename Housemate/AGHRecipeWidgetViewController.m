//
//  AGHRecipeWidgetViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHRecipeWidgetViewController.h"

@interface AGHRecipeWidgetViewController ()
{
	NSDictionary* recipeWidgetViews;
	NSDictionary* recipeFullScreenViews;
	
	BOOL isFullScreen;
	BOOL isInStepView;
	CGRect nonFullScreenFrame;
}

@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectRootView;
@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectCategoryView;
@property (strong) IBOutlet AGHWidgetBackgroundView *recipeSelectPizzaView;

@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeCardView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeFullScreenView;

@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep1View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep2View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep3View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep4View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep5View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep6View;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep7View;

@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep1FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep2FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep3FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep4FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep5FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep6FullScreenView;
@property (strong) IBOutlet AGHWidgetBackgroundView *pizzaRecipeStep7FullScreenView;

- (IBAction)findRecipesButtonPressed:(id)sender;
- (IBAction)findPizzaRecipesButtonPressed:(id)sender;
- (IBAction)specificPizzaButtonPressed:(id)sender;

- (IBAction)backToWidgetRootButtonPressed:(id)sender;
- (IBAction)backToRecipeTypesButtonPressed:(id)sender;
- (IBAction)backToPizzaTypesButtonPressed:(id)sender;

- (IBAction)modeChangeButtonPressed:(id)sender;

- (IBAction)nextStepButtonPressed:(id)sender;

- (IBAction)widgetCloseButtonPressed:(id)sender;
- (IBAction)widgetZoomButtonPressed:(id)sender;
- (IBAction)widgetUnzoomButtonPressed:(id)sender;

@end

@implementation AGHRecipeWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
        // Initialization code here.
		
		isFullScreen = NO;
		isInStepView = NO;
    }
    
    return self;
}

-(void)loadView
{
	[super loadView];

	self.pizzaRecipeCardView.name = self.pizzaRecipeFullScreenView.name = @"full_recipe";
	self.pizzaRecipeStep1View.name = self.pizzaRecipeStep1FullScreenView.name = @"step_1";
	self.pizzaRecipeStep2View.name = self.pizzaRecipeStep2FullScreenView.name = @"step_2";
	self.pizzaRecipeStep3View.name = self.pizzaRecipeStep3FullScreenView.name = @"step_3";
	self.pizzaRecipeStep4View.name = self.pizzaRecipeStep4FullScreenView.name = @"step_4";
	self.pizzaRecipeStep5View.name = self.pizzaRecipeStep5FullScreenView.name = @"step_5";
	self.pizzaRecipeStep6View.name = self.pizzaRecipeStep6FullScreenView.name = @"step_6";
	self.pizzaRecipeStep7View.name = self.pizzaRecipeStep7FullScreenView.name = @"step_7";
	
	recipeWidgetViews = @{
					   self.pizzaRecipeCardView.name: self.pizzaRecipeCardView,
		self.pizzaRecipeStep1View.name: self.pizzaRecipeStep1View,
		self.pizzaRecipeStep2View.name: self.pizzaRecipeStep2View,
		self.pizzaRecipeStep3View.name: self.pizzaRecipeStep3View,
		self.pizzaRecipeStep4View.name: self.pizzaRecipeStep4View,
		self.pizzaRecipeStep5View.name: self.pizzaRecipeStep5View,
		self.pizzaRecipeStep6View.name: self.pizzaRecipeStep6View,
		self.pizzaRecipeStep7View.name: self.pizzaRecipeStep7View
						};
	recipeFullScreenViews = @{
		self.pizzaRecipeFullScreenView.name: self.pizzaRecipeFullScreenView,
	   self.pizzaRecipeStep1FullScreenView.name: self.pizzaRecipeStep1FullScreenView,
	   self.pizzaRecipeStep2FullScreenView.name: self.pizzaRecipeStep2FullScreenView,
	   self.pizzaRecipeStep3FullScreenView.name: self.pizzaRecipeStep3FullScreenView,
	   self.pizzaRecipeStep4FullScreenView.name: self.pizzaRecipeStep4FullScreenView,
	   self.pizzaRecipeStep5FullScreenView.name: self.pizzaRecipeStep5FullScreenView,
	   self.pizzaRecipeStep6FullScreenView.name: self.pizzaRecipeStep6FullScreenView,
	   self.pizzaRecipeStep7FullScreenView.name: self.pizzaRecipeStep7FullScreenView
							};
}

#pragma mark - Action methods

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

- (IBAction)modeChangeButtonPressed:(id)sender
{
	[self setStepMode:(!isInStepView)];
}

- (IBAction)nextStepButtonPressed:(id)sender {
}

- (IBAction)widgetCloseButtonPressed:(id)sender
{
	[self.view removeFromSuperview];
}

- (IBAction)widgetZoomButtonPressed:(id)sender
{
	NSLog(@"Widget zoom button pressed.");
	[self setFullScreen:YES];
}

- (IBAction)widgetUnzoomButtonPressed:(id)sender
{
	NSLog(@"Widget unzoom button pressed.");
	[self setFullScreen:NO];
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

-(void)setStepMode:(BOOL)stepView
{
	if(stepView == isInStepView)
		return;
	
	AGHWidgetBackgroundView* newView;
	if(stepView)
	{
		NSLog(@"Showing step by step mode...");
		
		newView = isFullScreen ? recipeFullScreenViews[@"step_1"] : recipeWidgetViews[@"step_1"];
	}
	else
	{
		NSLog(@"Showing recipe card mode...");
		
		newView = isFullScreen ? recipeFullScreenViews[@"full_recipe"] : recipeWidgetViews[@"full_recipe"];
	}
	
	newView.frame = self.view.frame;
	[self.view.superview addSubview:newView];
	[self.view removeFromSuperview];
	self.view = newView;
	
	isInStepView = !isInStepView;
}

-(void)setFullScreen:(BOOL)fullScreen
{
	if(fullScreen == isFullScreen)
		return;
	
	AGHWidgetBackgroundView* newView;
	NSString* currentViewName = ((AGHWidgetBackgroundView*)self.view).name;
	if(fullScreen)
	{
		NSLog(@"Zooming...");

		newView = recipeFullScreenViews[currentViewName];
		newView.frame = CGRectMake(0, 0, 1920, 1080);
		nonFullScreenFrame = self.view.frame;
	}
	else
	{
		NSLog(@"Unzooming...");
		
		newView = recipeWidgetViews[currentViewName];
		newView.frame = nonFullScreenFrame;
	}
	
	[self.view.superview addSubview:newView];
	[self.view removeFromSuperview];
	self.view = newView;
	
	isFullScreen = !isFullScreen;
}

@end
