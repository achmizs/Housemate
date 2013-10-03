//
//  AGHWidgetBackgroundView.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/28/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHWidgetBackgroundView.h"

NSComparisonResult compareViews(NSView* firstView, NSView* secondView, void *context)
{
	
    if (firstView.tag == secondView.tag)
	{
        return NSOrderedSame;
    }
	else
	{
        if (firstView.tag < secondView.tag)
		{
            return NSOrderedAscending;
        }
		else
		{
            return NSOrderedDescending;
        }
    }
}

@interface AGHWidgetBackgroundView ()

@end

@implementation AGHWidgetBackgroundView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
	{
        NSLog(@"Widget background view instantiated.");
		self.tag = 1;
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

	self.tag++;
	[self.superview sortSubviewsUsingFunction:compareViews context:nil];
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
