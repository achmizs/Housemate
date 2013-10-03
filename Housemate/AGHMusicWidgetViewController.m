//
//  AGHMusicWidgetViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 10/2/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHMusicWidgetViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface AGHMusicWidgetViewController ()
{
	AVAudioPlayer* audioPlayer;
}

@property (strong) IBOutlet AGHWidgetBackgroundView *musicCategoriesView;
@property (strong) IBOutlet AGHWidgetBackgroundView *rockMusicView;
@property (strong) IBOutlet AGHWidgetBackgroundView *collapsedWidgetView;

@property (strong) IBOutlet AGHWidgetBackgroundView* currentExpandedView;

- (IBAction)rockMusicButtonPressed:(id)sender;
- (IBAction)badRomanceButtonPressed:(id)sender;

- (IBAction)playPauseButtonPressed:(id)sender;

- (IBAction)collapseButtonPressed:(id)sender;
- (IBAction)expandButtonPressed:(id)sender;
- (IBAction)closeButtonPressed:(id)sender;

@end

@implementation AGHMusicWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
        // Initialization code here.
		NSURL* file = [[NSBundle mainBundle] URLForResource:@"bad_romance" withExtension:@"mp3"];
		audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:nil];
		[audioPlayer prepareToPlay];
	}

	return self;
}

#pragma mark - Screen transition methods

-(void)showMusicCategoriesScreen
{
	self.musicCategoriesView.frame = self.view.frame;
	[self.view.superview addSubview:self.musicCategoriesView];
	[self.view removeFromSuperview];
	self.view = self.musicCategoriesView;
	self.currentExpandedView = self.musicCategoriesView;
}

-(void)showRockMusicScreen
{
	self.rockMusicView.frame = self.view.frame;
	[self.view.superview addSubview:self.rockMusicView];
	[self.view removeFromSuperview];
	self.view = self.rockMusicView;
	self.currentExpandedView = self.rockMusicView;
}

-(void)showCollapsedView
{
	CGRect collapsedViewFrame = self.collapsedWidgetView.frame;
	collapsedViewFrame.origin = self.view.frame.origin;
	self.collapsedWidgetView.frame = collapsedViewFrame;
	
	[self.view.superview addSubview:self.collapsedWidgetView];
	[self.view removeFromSuperview];
	self.view = self.collapsedWidgetView;
}

-(void)showExpandedView
{
	CGRect expandedViewFrame = self.currentExpandedView.frame;
	expandedViewFrame.origin = self.view.frame.origin;
	self.currentExpandedView.frame = expandedViewFrame;
	
	[self.view.superview addSubview:self.currentExpandedView];
	[self.view removeFromSuperview];
	self.view = self.currentExpandedView;
}

- (IBAction)rockMusicButtonPressed:(id)sender
{
	[self showRockMusicScreen];
}

- (IBAction)badRomanceButtonPressed:(id)sender
{
	[self showCollapsedView];
}

- (IBAction)playPauseButtonPressed:(id)sender
{
	NSLog(@"Play/pause");
	
	if ([audioPlayer isPlaying]) {
		[audioPlayer pause];
	} else {
		[audioPlayer play];
	}
}

- (IBAction)collapseButtonPressed:(id)sender
{
	[self showCollapsedView];
}

- (IBAction)expandButtonPressed:(id)sender
{
	[self showExpandedView];
}

- (IBAction)closeButtonPressed:(id)sender
{
	[self.view removeFromSuperview];
}
@end
