//
//  MainViewController.m
//  SwapViews
//
//  Created by Devil Devil on 3/4/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface MainViewController()

@property (strong, nonatomic) FirstViewController* firstViewController;
@property (strong, nonatomic) SecondViewController* secondViewController;

- (IBAction)switchView:(id)sender;

@end

@implementation MainViewController

@synthesize firstViewController = _firstViewController;
@synthesize secondViewController = _secondViewCongtroller;


- (FirstViewController*)
firstViewController
{
	if (_firstViewController == nil) {
		_firstViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FirstView"];
		_firstViewController.view.frame = CGRectMake(0, 0, 320, 416);
	}
	
	return _firstViewController;
}

- (SecondViewController*)
secondViewController
{
	if (_secondViewCongtroller == nil) {
		_secondViewCongtroller = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
		_secondViewCongtroller.view.frame = CGRectMake(0, 0, 320, 416);
	}
	
	return _secondViewCongtroller;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)
viewDidLoad
{
	[self.view insertSubview:self.firstViewController.view atIndex:0];
	
    [super viewDidLoad];
}

- (void)
viewDidUnload
{
	self.firstViewController = nil;
	self.secondViewController = nil;
	
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)
switchView:(id)sender
{
	if (self.firstViewController.view.superview == nil) {
		self.firstViewController.value = self.secondViewController.value;
		[self.view insertSubview:self.firstViewController.view atIndex:0];
		[self.secondViewController.view removeFromSuperview];
	}else{
		self.secondViewController.value = self.firstViewController.value;
		[self.view insertSubview:self.secondViewController.view atIndex:0];
		[self.firstViewController.view removeFromSuperview];
	}
}

@end
