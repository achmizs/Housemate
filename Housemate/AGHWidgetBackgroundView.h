//
//  AGHWidgetBackgroundView.h
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol AGHWidgetBackgroundViewDelegate <NSObject>

-(void)mouseDown:(NSEvent *)theEvent;
-(void)mouseDragged:(NSEvent *)theEvent;
-(void)mouseUp:(NSEvent *)theEvent;

@end

@interface AGHWidgetBackgroundView : NSView

@property NSInteger tag;
@property (nonatomic, strong) NSString* name;

@property (nonatomic, weak) IBOutlet id <AGHWidgetBackgroundViewDelegate> delegate;

@end
