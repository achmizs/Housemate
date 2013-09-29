//
//  AGHWidgetBackgroundView.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHWidgetBackgroundView.h"

@implementation AGHWidgetBackgroundView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
	{
        NSLog(@"Widget background view instantiated.");
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

-(void)mouseDown:(NSEvent *)theEvent
{
	NSLog(@"Widget background view detected mouse down event.");
	[self.delegate mouseDown:theEvent];
}

-(void)mouseDragged:(NSEvent *)theEvent
{
	[self.delegate mouseDragged:theEvent];
}

-(void)mouseUp:(NSEvent *)theEvent
{
	[self.delegate mouseUp:theEvent];
}

@end
