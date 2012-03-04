//
//  FirstViewController.m
//  SwapViews
//
//  Created by Devil Devil on 3/4/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController()

@property (weak, nonatomic) IBOutlet UISlider* slider;

- (IBAction)updateValue:(id)sender;

@end

@implementation FirstViewController

@synthesize value = _value;
@synthesize slider = _slider;


- (void)viewWillAppear:(BOOL)animated
{
	self.slider.value = self.value;
	[super viewWillAppear:animated];
}

- (void)viewDidUnload
{
	self.slider = nil;
	
    [super viewDidUnload];
}

- (IBAction)updateValue:(UISlider*)sender
{
	self.value = sender.value;
}

@end
