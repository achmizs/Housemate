//
//  AGHHomeViewController.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol AGHHomeViewControllerDelegate <NSObject>

-(void)switchToKitchen;

@end

@interface AGHHomeViewController : NSViewController

@property (nonatomic, weak) id <AGHHomeViewControllerDelegate> delegate;

@end
