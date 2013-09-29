//
//  AGHWidgetViewController.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/27/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AGHWidgetBackgroundView.h"

@interface AGHWidgetViewController : NSViewController <AGHWidgetBackgroundViewDelegate>

-(void)mouseDown:(NSEvent *)theEvent;
-(void)mouseDragged:(NSEvent *)theEvent;
-(void)mouseUp:(NSEvent *)theEvent;

@end
