//
//  AGHMusicWidgetViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 10/2/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHMusicWidgetViewController.h"

@interface AGHMusicWidgetViewController ()

@property (strong) IBOutlet AGHWidgetBackgroundView *musicCategoriesView;
@property (strong) IBOutlet AGHWidgetBackgroundView *rockMusicView;
@property (strong) IBOutlet AGHWidgetBackgroundView *collapsedWidgetView;

@end

@implementation AGHMusicWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
