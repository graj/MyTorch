//
//  GRViewController.m
//  MyTorch
//
//  Created by GRaj on 27/07/13.
//  Copyright (c) 2013 NxtSys. All rights reserved.
//

#import "GRViewController.h"
#import "Torch.h"

@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[Torch sharedInstance] start];	// light me up!
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)actionOnOffButton {
    
    Torch *t = [Torch sharedInstance];
    
    if([t isTorchOn])
    {
		[t stop];
	}
	else
	{
		[t start];
	}
    
}

@end
