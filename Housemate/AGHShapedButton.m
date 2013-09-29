//
//  AGHShapedButton.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/29/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHShapedButton.h"

@implementation AGHShapedButton

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

- (BOOL)isOpaque
{
	return NO;
}

-(NSView*)hitTest:(NSPoint)aPoint
{
	NSView* result = [super hitTest:aPoint];
	
	if(result == self)
	{
		NSPoint localPoint = [self convertPoint:aPoint fromView:[self superview]];
		
		if( YES /* local point doesn't hit non-transparent color in my image */ )
		{
			result = NO;
		}
	}
		   
	return result;
}
		   
@end
