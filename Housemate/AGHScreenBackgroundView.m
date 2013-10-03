//
//  AGHScreenBackgroundView.m
//  Housemate
//
//  Created by Sandy Achmiz on 10/3/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHScreenBackgroundView.h"
#import "AGHWidgetBackgroundView.h"

@implementation AGHScreenBackgroundView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

-(void)sortSubviewsUsingFunction:(NSComparisonResult (*)(__strong id, __strong id, void *))compare context:(void *)context
{
	[super sortSubviewsUsingFunction:compare context:context];
	for(NSView* subview in self.subviews)
	{
		if([subview respondsToSelector:@selector(setTag:)])
		{
			[((AGHWidgetBackgroundView*)subview) setTag:1];
		}
	}
}

-(void)mouseUp:(NSEvent *)theEvent
{
	
}

-(void)mouseDown:(NSEvent *)theEvent
{
	
}

-(void)mouseDragged:(NSEvent *)theEvent
{
	
}

-(void)mouseMoved:(NSEvent *)theEvent
{
	
}

-(void)mouseEntered:(NSEvent *)theEvent
{
	
}

-(void)mouseExited:(NSEvent *)theEvent
{
	
}

@end
