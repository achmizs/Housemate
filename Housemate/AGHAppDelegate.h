//
//  AGHAppDelegate.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/27/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AGHHomeViewController.h"
#import "AGHKitchenViewController.h"
#import "AGHMediaViewController.h"

@interface AGHAppDelegate : NSObject <NSApplicationDelegate, AGHHomeViewControllerDelegate, AGHKitchenViewControllerDelegate, AGHMediaViewControllerDelegate>

@property (assign) IBOutlet NSWindow *window;

-(void)switchToHome;
-(void)switchToKitchen;
-(void)showMediaView;
-(void)backToKitchen;

-(void)spawnMusicWidgetInCurrentScreen;

@end
