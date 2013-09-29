//
//  AGHMediaViewController.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/29/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol AGHMediaViewControllerDelegate <NSObject>

-(void)backToKitchen;

@end

@interface AGHMediaViewController : NSViewController

@property (nonatomic, weak) id <AGHMediaViewControllerDelegate> delegate;

@end
