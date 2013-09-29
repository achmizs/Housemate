//
//  AGHAppDelegate.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/27/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHAppDelegate.h"
#import "AGHWidgetViewController.h"

@interface AGHAppDelegate ()

@property (nonatomic, strong) IBOutlet AGHHomeViewController* homeViewController;
@property (nonatomic, strong) IBOutlet AGHKitchenViewController* kitchenViewController;
@property (nonatomic, strong) IBOutlet AGHMediaViewController* mediaViewController;

- (IBAction)enterFullScreenMenuChoice:(id)sender;

@end

@implementation AGHAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Instantiate home view controller.
	self.homeViewController = [[AGHHomeViewController alloc] initWithNibName:@"AGHHomeViewController" bundle:nil];
	self.homeViewController.delegate = self;
	
	// Instantiate kitchen view controller.
	self.kitchenViewController = [[AGHKitchenViewController alloc] initWithNibName:@"AGHKitchenViewController" bundle:nil];
	self.kitchenViewController.delegate = self;
	
	// Instantiate media view controller.
	self.mediaViewController = [[AGHMediaViewController alloc] initWithNibName:@"AGHMediaViewController" bundle:nil];
	self.mediaViewController.delegate = self;

	// Add home view controller to main window.
	[self.window.contentView addSubview:self.homeViewController.view];
	[self.homeViewController.view setFrameOrigin:NSPointFromCGPoint(CGPointMake(0, 0))];

	// Enable full screen mode.
	[self.window setCollectionBehavior:NSWindowCollectionBehaviorFullScreenPrimary];
}

- (IBAction)enterFullScreenMenuChoice:(id)sender
{
	[self.window toggleFullScreen:nil];
	[self.homeViewController.view setFrameOrigin:NSPointFromCGPoint(CGPointMake(0, 0))];
}

-(void)switchToHome
{
	[self.kitchenViewController.view removeFromSuperview];
	[self.window.contentView addSubview:self.homeViewController.view];
}

-(void)switchToKitchen
{
	[self.homeViewController.view removeFromSuperview];
	[self.window.contentView addSubview:self.kitchenViewController.view];
}

-(void)showMediaView
{
//	[self.kitchenViewController.view removeFromSuperview];
	[self.window.contentView addSubview:self.mediaViewController.view];
}

-(void)backToKitchen
{
	[self.mediaViewController.view removeFromSuperview];
}

@end
