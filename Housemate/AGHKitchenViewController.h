//
//  AGHKitchenViewController.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol AGHKitchenViewControllerDelegate <NSObject>

-(void)switchToHome;
-(void)showMediaView;

@end

@interface AGHKitchenViewController : NSViewController

@property (nonatomic, weak) id <AGHKitchenViewControllerDelegate> delegate;

-(void)spawnMusicWidget;

@end
