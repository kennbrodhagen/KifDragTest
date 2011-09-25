//
//  KifDragTestViewController.m
//  KifDragTest
//
//  Created by Kenn Brodhagen on 9/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KifDragTestViewController.h"


@interface CustomView : UIView
@end

@implementation CustomView

- (BOOL) canBecomeFirstResponder
{
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
    NSLog( @"touchesBegan" );
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event 
{
    NSLog( @"touchesMoved" );
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog( @"touchesEnded" );
}

// restore the saved position when touch cancelled
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event 
{
    NSLog( @"touchesCancelled" );
}


@end

@implementation KifDragTestViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
