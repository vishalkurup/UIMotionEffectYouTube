//
//  ViewController.m
//  UIMotionEffectYouTube
//
//  Created by Kurup, Vishal on 12/20/13.
//  Copyright (c) 2013 CONKAVE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myImageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Min and max values -- The higher these #s are, the more pronouced the effect
    CGFloat leftRightMin = -55.0f;
    CGFloat leftRightMax = 55.0f;
    
    CGFloat upDownMin = -35.0f;
    CGFloat upDownMax = 35.0f;
    
    //Motion Effect
    UIInterpolatingMotionEffect * leftRight = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    
    leftRight.minimumRelativeValue = @(leftRightMin);
    leftRight.maximumRelativeValue = @(leftRightMax);
    
    
    UIInterpolatingMotionEffect * upDown = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    upDown.minimumRelativeValue = @(upDownMin);
    upDown.maximumRelativeValue = @(upDownMax);
    
    //Create a motion effect group
    UIMotionEffectGroup * meGroup = [[UIMotionEffectGroup alloc]init];
    meGroup.motionEffects = @[leftRight, upDown];
    
    //Add the motion effect group to our imageView
    [myImageView addMotionEffect:meGroup];
                                    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
