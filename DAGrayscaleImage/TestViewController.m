//
//  TestViewController.m
//  DAGrayscaleImage
//
//  Created by Dejan on 01/06/14.
//  Copyright (c) 2014 Dejan. All rights reserved.
//

#import "TestViewController.h"
#import "DAGrayscaleImageView.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet DAGrayscaleImageView *grayscaleImageView;

@end


@implementation TestViewController

- (IBAction)sliderValueChanged:(UISlider *)sender {
    [self.grayscaleImageView setSaturation:sender.value];
}

@end
