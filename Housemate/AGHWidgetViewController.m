//
//  AGHWidgetViewController.m
//  Housemate
//
//  Created by Sandy Achmiz on 9/27/13.
//  Copyright (c) 2013 AGH. All rights reserved.
//

#import "AGHWidgetViewController.h"

@interface AGHWidgetViewController ()
{
	// Variables to track widget dragging
	bool mouseInWidget;
	bool trackingWidgetDrag;
}

@end

@implementation AGHWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{
		// Initialization code here.
		NSLog(@"WidgetViewController instantiated.");
    }
    
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
	NSLog(@"Mouse down event detected.");
	
	if((mouseInWidget = NSPointInRect([self.view convertPoint:theEvent.locationInWindow fromView:nil], self.view.frame)))
	{
		trackingWidgetDrag = YES;
	}
}

-(void)mouseDragged:(NSEvent *)theEvent
{
	NSLog(@"Mouse drag event detected.");
	
	NSPoint widgetOrigin;
	
	if(trackingWidgetDrag)
	{
		mouseInWidget = NSPointInRect([self.view convertPoint:theEvent.locationInWindow fromView:nil], self.view.frame);
	}
	
	widgetOrigin = self.view.frame.origin;
    [self.view setFrameOrigin:NSMakePoint(widgetOrigin.x + [theEvent deltaX], widgetOrigin.y - [theEvent deltaY])];
}

-(void)mouseUp:(NSEvent *)theEvent
{
	NSLog(@"Mouse up event detected.");
	

}

@end
